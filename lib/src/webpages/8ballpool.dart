import 'package:flutter/material.dart';
import 'package:omuga/src/drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Ballpool extends StatefulWidget {
  @override
  _BallpoolState createState() => _BallpoolState();
}

class _BallpoolState extends State<Ballpool> {
  num position = 1;
  final key = UniqueKey();

  doneLoading(String A) {
    setState(() {
      position = 0;
    });
  }

  startLoading(String A) {
    setState(() {
      position = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("8 Ball Billiards")),
        ),
        drawer: myDrawer(),
        body: Container(
          child: IndexedStack(
            index: position,
            children: <Widget>[
              Container(
                child: WebView(
                  initialUrl:
                      "https://play.famobi.com/8-ball-billiards-classic",
                  javascriptMode: JavascriptMode.unrestricted,
                  debuggingEnabled: true,
                  onPageStarted: startLoading,
                  onPageFinished: doneLoading,
                ),
              ),
              Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
