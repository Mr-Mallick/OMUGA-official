import 'package:flutter/material.dart';
import 'package:omuga/src/drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RollerSplat extends StatefulWidget {
  @override
  _RollerSplatState createState() => _RollerSplatState();
}

class _RollerSplatState extends State<RollerSplat> {
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
        title: Center(child: Text("Roller Splat")),
      ),
      drawer: myDrawer(),
      body: Container(
        child: IndexedStack(
          index: position,
          children: <Widget>[
            Container(
              child: WebView(
                initialUrl:
                    "https://html5.gamedistribution.com/41f828f63aba49dda0d8c70151e6926a/",
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
