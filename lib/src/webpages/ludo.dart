import 'package:flutter/material.dart';
import 'package:omuga/src/drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Ludo extends StatefulWidget {
  @override
  _LudoState createState() => _LudoState();
}

class _LudoState extends State<Ludo> {
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
        title: Center(child: Text("Ludo")),
      ),
      drawer: myDrawer(),
      body: Container(
        child: IndexedStack(
          index: position,
          children: <Widget>[
            Container(
              child: WebView(
                initialUrl:
                    "https://www.gamezop.com/g/SkhljT2fdgb?id=3OupSRQ49",
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
