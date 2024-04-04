import 'package:cybrom_hackathon/pages/home_page.dart';
import 'package:cybrom_hackathon/pages/scanner.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: WebViewApp(),
    );
  }
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({super.key});

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://flutter.dev'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter WebView'),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}

// class WebViewApp extends StatefulWidget {
//   @override
//   _WebViewAppState createState() => _WebViewAppState();
// }

// class _WebViewAppState extends State<WebViewApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter WebView Example'),
//       ),
//       body: WebView(
//         controller: WebViewController()
//           ..setJavaScriptMode(JavaScriptMode.unrestricted)
//           ..setBackgroundColor(const Color(0x00000000))
//           ..setNavigationDelegate(NavigationDelegate(
//             onProgress: (int progress) {
//               // update
//             },
//             onPageStarted: (String url) {},
//             onPageFinished: (String url) {},
//             onWebResourceError: (error) {},
//             onNavigationRequest: (request) {
//               if (request.url.startsWith('https://www.youtube.com/')) {
//                 return NavigationDecision.prevent;
//               }
//               return NavigationDecision.navigate;
//             },
//           ))
//           ..loadRequest(Uri.parse("https://google.com/")),
//       ),
//     );
//   }
// }
