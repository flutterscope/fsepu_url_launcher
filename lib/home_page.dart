import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const String _url = 'https://flutterscope.com';

  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("url_launcher"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _launchURL,
          child: const Text("Open FlutterScope Website"),
        ),
      ),
    );
  }
}
