import 'dart:io';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:image_picker/image_picker.dart';
import 'generated/infer.pbgrpc.dart' as infer;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '图像识别'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ImagePicker _picker = ImagePicker();
  final infer.WebClient _cli = infer.WebClient(
    ClientChannel(
      '192.168.3.27',
      port: 3001,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()), 
    ),
  );

  var _image;
  var _preds;

  void _pickeImage(ImageSource source) async {
    XFile? image =
        await _picker.pickImage(source: source, maxHeight: 800, maxWidth: 800);
    if (image == null) {
      return;
    }
    setState(() {
      _image = File(image.path);
    });

    infer.WebResponse res = await _cli.process(
      infer.WebRequest(image: await image.readAsBytes())
    );

    setState(() {
      _preds = res.preds;
    });
  }

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme.titleLarge;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: _image != null
                  ? Column(children: [
                      Text(
                        "${_preds[0].name} => ${_preds[0].probability.toStringFixed(3)}",
                        style: textStyle,
                      ),
                      Text(
                        "${_preds[1].name} => ${_preds[1].probability.toStringFixed(3)}",
                        style: textStyle,
                      ),
                      Text(
                        "${_preds[2].name} => ${_preds[2].probability.toStringFixed(3)}",
                        style: textStyle,
                      ),
                    ])
                  : null,
            ),
            Container(
              child: _image != null
                  ? Image.file(
                      _image,
                      width: 400,
                      height: 400,
                    )
                  : const Text("点击下面的按钮"),
            ),
            ButtonBar(
              buttonPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              alignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                    textStyle: const TextStyle(fontSize: 12),
                  ),
                  onPressed: () {
                  _pickeImage(ImageSource.camera);
                }, 
                  child: const Text("拍照")),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    textStyle: const TextStyle(fontSize: 12),
                  ),
                  onPressed: () {
                  _pickeImage(ImageSource.gallery);
                }, 
                  child: const Text("选择照片")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
