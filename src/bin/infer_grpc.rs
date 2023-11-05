use async_trait::async_trait;

use tonic::transport::{Channel, Server};
use tonic::{Request, Response, Status};

use hello_tf::Pred;
use hello_tf::{InferRequest, InferResponse};
use hello_tf::{PostProcessRequest, PostProcessResponse};
use hello_tf::{PreProcessRequest, PreProcessResponse};

use tokio::runtime::Builder;

use hello_tf::web_server::Web;
use hello_tf::web_server::WebServer;
use hello_tf::{WebRequest, WebResponse};

use hello_tf::infer_client::InferClient;
use hello_tf::process_client::ProcessClient;

fn main() {
    let rt = Builder::new_current_thread().enable_all().build().unwrap();

    rt.block_on(async {
        let addr = "0.0.0.0:3001";
        if std::env::var_os("RUST_LOG").is_none() {
            std::env::set_var("RUST_LOG", "example_multipart_form=debug,tower_http=debug")
        }
        tracing_subscriber::fmt::init();
        tracing::info!("listening on {}", addr);

        let addr = addr.parse().unwrap();
        let app = WebServer::new(WebImpl {
            infer_cli: InferClient::connect("http://localhost:5000").await.unwrap(),
            process_cli: ProcessClient::connect("http://localhost:5001")
                .await
                .unwrap(),
        });

        Server::builder()
            .accept_http1(true)
            .add_service(app)
            .serve(addr)
            .await
            .unwrap();
    });
}

struct WebImpl {
    infer_cli: InferClient<Channel>,
    process_cli: ProcessClient<Channel>,
}

#[async_trait]
impl Web for WebImpl {
    // 处理图片
    async fn process(&self, req: Request<WebRequest>) -> Result<Response<WebResponse>, Status> {
        let img = req.into_inner().image;
        let mut infer_cli = self.infer_cli.clone();
        let mut process_cli = self.process_cli.clone();

        let PreProcessResponse { shape, data } = pre_process(&mut process_cli, &img).await;
        let InferResponse { shape, data } = infer(&mut infer_cli, shape, data).await;
        let PostProcessResponse { preds } = post_process(&mut process_cli, shape, data).await;

        let preds: Vec<_> = preds
            .into_iter()
            .map(|p| Pred {
                name: p.name,
                probability: p.probability,
            })
            .collect();

        Ok(Response::new(WebResponse { preds }))
    }
}

async fn pre_process(cli: &mut ProcessClient<Channel>, data: &[u8]) -> PreProcessResponse {
    let req = PreProcessRequest { image: data.into() };
    cli.pre_process(req).await.unwrap().into_inner()
}

async fn infer(cli: &mut InferClient<Channel>, shape: Vec<u64>, data: Vec<f32>) -> InferResponse {
    let req = InferRequest { shape, data };
    cli.infer(req).await.unwrap().into_inner()
}

async fn post_process(
    cli: &mut ProcessClient<Channel>,
    shape: Vec<u64>,
    data: Vec<f32>,
) -> PostProcessResponse {
    let req = PostProcessRequest { shape, data };
    cli.post_process(req).await.unwrap().into_inner()
}
