import 'package:flutter/material.dart';
import 'package:omuga/src/drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MotoFury extends StatefulWidget {
  @override
  _MotoFuryState createState() => _MotoFuryState();
}

class _MotoFuryState extends State<MotoFury> {
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
          title: Center(child: Text("Moto Fury")),
        ),
        drawer: myDrawer(),
        body: Container(
          child: IndexedStack(
            index: position,
            children: <Widget>[
              Container(
                child: WebView(
                  initialUrl: "https://play.famobi.com/moto-fury",
                  javascriptMode: JavascriptMode.unrestricted,
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
