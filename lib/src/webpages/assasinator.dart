import 'package:flutter/material.dart';
import 'package:omuga/src/drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Assasinator extends StatefulWidget {
  @override
  _AssasinatorState createState() => _AssasinatorState();
}

class _AssasinatorState extends State<Assasinator> {
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
          title: Center(child: Text("Assasinator")),
        ),
        drawer: myDrawer(),
        body: Container(
          child: IndexedStack(
            index: position,
            children: <Widget>[
              Container(
                child: WebView(
                  initialUrl:
                      "https://www.sogame.com/oppo/assassinator/index.html?__pf__=detail&amp;__barStyle__=1_1",
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
