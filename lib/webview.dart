import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:url_launcher/url_launcher.dart';

class WebViewPage extends StatelessWidget {
  String title;
  String url;


  WebViewPage(this.title, this.url);

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: url,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: <Widget>[
          InkWell(
            onTap: () {
              _launchURL(url);
            },
            child: Container(
              padding: EdgeInsets.only(
                left: 15.0,
                right: 15.0,
              ),
              child: Icon(Icons.launch),
            ),
          ),
        ],
      ),
    );
  }
}
