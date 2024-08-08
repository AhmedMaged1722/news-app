import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Details extends StatefulWidget {
  const Details({super.key, required this.url, required this.name});

  final String url;
  final String name;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  late final WebViewController controller = WebViewController();
  @override
  void initState() {
    super.initState();
    // ignore: avoid_single_cascade_in_expression_statements
    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          widget.name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
