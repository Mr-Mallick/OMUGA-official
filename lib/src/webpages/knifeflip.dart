import 'package:flutter/material.dart';
import 'package:omuga/src/drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class KnifeFlip extends StatefulWidget {
  @override
  _KnifeFlipState createState() => _KnifeFlipState();
}

class _KnifeFlipState extends State<KnifeFlip> {
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
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Knife Flip")),
      ),
      drawer: myDrawer(),
      body: Container(
        child: IndexedStack(
          index: position,
          children: <Widget>[
            Container(
              child: WebView(
                initialUrl: "https://amvictory.com/h5game/?h5=knife%20hit",
                javascriptMode: JavascriptMode.unrestricted,
                gestureNavigationEnabled: true,
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
    );
  }
}
