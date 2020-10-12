import 'package:flutter/material.dart';
import 'package:omuga/src/drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BubbleShooter extends StatefulWidget {
  @override
  _BubbleShooterState createState() => _BubbleShooterState();
}

class _BubbleShooterState extends State<BubbleShooter> {
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
        title: Center(child: Text("Bubble Shooter")),
      ),
      drawer: myDrawer(),
      body: Container(
        child: IndexedStack(
          index: position,
          children: <Widget>[
            Container(
              child: WebView(
                initialUrl: "https://www.bubble-shooter-free.com/",
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
    );
  }
}
