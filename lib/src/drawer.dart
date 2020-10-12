import 'package:flutter/material.dart';
import 'package:omuga/src/aboutus.dart';
import 'package:omuga/src/category/listcategorgy.dart';
import 'package:omuga/src/homepage.dart';

// ignore: camel_case_types
class myDrawer extends StatefulWidget {
  @override
  _myDrawerState createState() => _myDrawerState();
}

// ignore: camel_case_types
class _myDrawerState extends State<myDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Color(0xffFFEBCD),
            Color(0xffF2CE97),
            Color(0xffEDB56E),
            Color(0xffEAB38B),
          ])),
          child: ListView(
            // padding: EdgeInsets.all(0),
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  "OMUGA",
                  style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
                accountEmail: Text(
                  "Online Multiple Games",
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
                // currentAccountPicture: CircleAvatar(
                //   child: Text("M"),
                // ),
              ),
              // ListTile(
              //   leading: Image.network("https://dummyimage.com/300.png/09f/fff"),
              //   title: Text(
              //     "Company Name",
              //     style: TextStyle(
              //       fontSize: 20,
              //       fontStyle: FontStyle.italic,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                title: home(),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CategoryList()));
                },
                title: categories(),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutUs()));
                },
                title: aboutus(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget home() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              "Home",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Container(
            child: Icon(Icons.home),
          ),
        ],
      ),
    );
  }

  Widget categories() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              "Categories",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Container(
            child: Icon(Icons.category),
          ),
        ],
      ),
    );
  }

  Widget aboutus() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              "About Us",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Container(
            child: Icon(Icons.info),
          ),
        ],
      ),
    );
  }
}
