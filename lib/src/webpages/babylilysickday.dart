import 'package:flutter/material.dart';
import 'package:omuga/src/drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BabylilySickDay extends StatefulWidget {
  @override
  _BabylilySickDayState createState() => _BabylilySickDayState();
}

class _BabylilySickDayState extends State<BabylilySickDay> {
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
          title: Center(child: Text("Baby Lily Sick Day")),
        ),
        drawer: myDrawer(),
        body: Container(
          child: IndexedStack(
            index: position,
            children: <Widget>[
              Container(
                child: WebView(
                  initialUrl: "https://play.famobi.com/baby-lily-sick-day",
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
