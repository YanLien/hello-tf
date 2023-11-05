use hello_tf::InferRequest;
use std::{fs, slice};
use tensorflow::Tensor;

use hello_tf::infer_client::InferClient;
use tokio::runtime::Builder;

fn main() {
    let rt = Builder::new_current_thread().enable_all().build().unwrap();
    rt.block_on(async {
        let mut client = InferClient::connect("http://localhost:5000").await.unwrap();
        let req = InferRequest {
            shape: vec![1, 224, 224, 3],
            data: read_data(),
        };
        let output = client.infer(req).await.unwrap().into_inner();

        let output = Tensor::new(&output.shape)
            .with_values(&output.data)
            .unwrap();

        println!("{:?}", output.to_vec());
    });
}

fn read_data() -> Vec<f32> {
    let data = fs::read("pys/request").unwrap();
    unsafe { slice::from_raw_parts(data.as_ptr() as *const f32, data.len() / 4 as usize).into() }
}
