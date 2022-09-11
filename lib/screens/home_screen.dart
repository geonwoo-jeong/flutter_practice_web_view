import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  HomeScreen({Key? key}) : super(key: key);
  final homeUrl = 'https://github.com/geonwoo-jeong';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Geonwoo Jeong'),
        backgroundColor: Colors.orange,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            if (controller == null) {
              return;
            }
            controller!.loadUrl(homeUrl);
          }, icon: Icon(Icons.home))
        ],
      ),
      body: WebView(
        initialUrl: homeUrl,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController controller){
          this.controller = controller;
        },
      )
    );
  }
}
