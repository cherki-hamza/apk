import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe, unused_import
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FacebookApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FacebookApp extends StatelessWidget {
  const FacebookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10,
        // ignore: prefer_const_constructors
        title: Center(
          child: const Text(
            'cherki hamza full stack',
            style: TextStyle(
              fontSize: 10,
              color: Colors.purple
            ),
          ),
        ),
      ),
      // ignore: avoid_unnecessary_containers
      body: const Padding(
        padding: EdgeInsets.all(1),
        child: WebView(
          initialUrl: "https://cherkihamza.com",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
