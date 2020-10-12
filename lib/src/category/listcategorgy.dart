import 'package:flutter/material.dart';
import 'package:omuga/src/category/adventure_screen.dart';
import 'package:omuga/src/category/boards.dart';
import 'package:omuga/src/category/by_google.dart';
import 'package:omuga/src/category/cards.dart';
import 'package:omuga/src/category/casual.dart';
import 'package:omuga/src/category/kids.dart';
import 'package:omuga/src/category/racing.dart';
import 'package:omuga/src/drawer.dart';
import 'package:firebase_admob/firebase_admob.dart';

const String testdevice = '';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  static final MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
      testDevices: <String>[],
      nonPersonalizedAds: true,
      keywords: <String>[
        'Business Services',
        'Hosting',
        'Software',
        'Loans',
        'Insurance',
        'Cash Services',
        'Mortgage',
        'Credit',
        'Attorney',
        'Lawyer',
        'facebook',
        'whatsapp',
        'Online',
        'Games',
        'Multiplayer',
      ]);

  @override
  void initState() {
    FirebaseAdMob.instance
        .initialize(appId: "ca-app-pub-8105441267168999~8884002314");
    _interstitialAd = createInterstitialAd()..load();
    super.initState();
  }

  @override
  void dispose() {
    _interstitialAd.dispose();
    super.dispose();
  }

  InterstitialAd _interstitialAd;

  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
      adUnitId: "ca-app-pub-8105441267168999/9095774781",
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("Interstitial event : $event");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Categories")),
        ),
        drawer: myDrawer(),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Color(0xffFFEBCD),
            Color(0xffF2CE97),
            Color(0xffEDB56E),
            Color(0xffEAB38B),
          ])),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AdventurePage()));
                },
                title: adventuretitle(),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BoardsPage()));
                },
                title: boardtitle(),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GamesByGoogle()));
                },
                title: bygoogletitle(),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CardsPage()));
                },
                title: cardstitle(),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Casualpage()));
                },
                title: casualtitle(),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => KidsPage()));
                },
                title: kidstitle(),
              ),
              SizedBox(
                height: 5,
              ),
              ListTile(
                onTap: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RacingPage()));
                },
                title: racingtitle(),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget adventuretitle() {
    return Card(
      color: Color(0xffFFEBCD),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "Adventure",
              style: TextStyle(
                fontSize: 16,
                color: Colors.deepOrangeAccent.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget boardtitle() {
    return Card(
      color: Color(0xffFFEBCD),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "Board",
              style: TextStyle(
                fontSize: 16,
                color: Colors.deepOrangeAccent.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget bygoogletitle() {
    return Card(
      color: Color(0xffFFEBCD),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "By Google",
              style: TextStyle(
                fontSize: 16,
                color: Colors.deepOrangeAccent.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget cardstitle() {
    return Card(
      color: Color(0xffFFEBCD),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "Cards",
              style: TextStyle(
                fontSize: 16,
                color: Colors.deepOrangeAccent.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget casualtitle() {
    return Card(
      color: Color(0xffFFEBCD),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "Casual",
              style: TextStyle(
                fontSize: 16,
                color: Colors.deepOrangeAccent.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget kidstitle() {
    return Card(
      color: Color(0xffFFEBCD),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "Kids",
              style: TextStyle(
                fontSize: 16,
                color: Colors.deepOrangeAccent.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget racingtitle() {
    return Card(
      color: Color(0xffFFEBCD),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "Racing",
              style: TextStyle(
                fontSize: 16,
                color: Colors.deepOrangeAccent.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
