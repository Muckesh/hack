// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class MainPage extends StatefulWidget {
//   const MainPage({super.key});

//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   late WebViewController controller;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Crop"),
//         actions: [
//           IconButton(
//             onPressed: () async {
//               if (await controller.canGoBack()) {
//                 controller.goBack();
//               }
//             },
//             icon: Icon(Icons.arrow_back),
//           )
//         ],
//       ),
//       body: WebView(
//         javascriptMode: JavascriptMode.unrestricted,
//         initialUrl: 'https://amazon.com',
//         onWebViewCreated: (controller) {},
//       ),
//     );
//   }
// }
