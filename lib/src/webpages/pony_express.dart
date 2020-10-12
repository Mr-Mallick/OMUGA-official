import 'package:flutter/material.dart';
import 'package:omuga/src/drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PonyExpress extends StatefulWidget {
  @override
  _PonyExpressState createState() => _PonyExpressState();
}

class _PonyExpressState extends State<PonyExpress> {
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
        title: Center(child: Text("Pony Express")),
      ),
      drawer: myDrawer(),
      body: Container(
        child: IndexedStack(
          index: position,
          children: <Widget>[
            Container(
              child: WebView(
                initialUrl:
                    "https://www.google.com/logos/2015/ponyexpress/ponyexpress15.html",
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
