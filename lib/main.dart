import 'package:flutter/material.dart';

import 'src/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OMUGA',
      theme: ThemeData(
        primaryColor: Color(0xffEDB56E),
      ),
      home: MyHomePage(),
    );
  }
}
