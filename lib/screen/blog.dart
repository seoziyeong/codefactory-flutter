import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Blog extends StatefulWidget {
  const Blog({super.key});
  @override
  State<Blog> createState() => _BlogState();
}

// home url 설정
// loadRequest에 String이 아닌 Uri 타입이 들어가야 하므로, Uri 파싱
final homeUrl = Uri.parse("https://velog.io/@berrry");

class _BlogState extends State<Blog> {
  // WebViewController 설정
  final WebViewController _webViewController = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted) // js 허용
    ..loadRequest(homeUrl); // 초기화면 설정

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("🍓"),
        centerTitle: true,
        backgroundColor: Colors.grey,
        actions: [
          IconButton(
            onPressed: () {
              _webViewController.loadRequest(homeUrl); // 홈(초기화면)으로 이동
            },
            icon: const Icon(Icons.home),
          )
        ],
        elevation: 0,
      ),
      body: WebViewWidget(
        controller: _webViewController, // WebViewWidget에 컨트롤러만 달아주면 됨
      ),
    );
  }
}
