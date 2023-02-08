import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://die-will-coding.tistory.com/'); // string 값을 Uri 클래스로 변경
// Uri는 Url를 쉽게 쓸수 있게 만드는 클래스다.

class HomeScreen extends StatelessWidget {
  WebViewController controller =
      WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(homeUrl); // final로 변수를 선언하지 않았음. (null이 될 수있음)

  HomeScreen({Key? key}) : super(key: key); // const를 지워줘야함.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('곧죽어도 콛잉'),
        actions: [
          IconButton(
            onPressed: () {
              controller.loadRequest(homeUrl);
            },
            icon: Icon(
              Icons.home,
            ),
          ),
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
      // WebView(
      //   onWebViewCreated: (WebViewController controller) {
      //     this.controller = controller; // controller에 저장.
      //   }, // 생성 시 웹뷰컨트롤 사용
      //   initialUrl: homeUrl,
      //   javascriptMode: JavascriptMode.unrestricted,
      // ),
    );
  }
}
