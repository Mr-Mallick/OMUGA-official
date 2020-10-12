import 'package:flutter/material.dart';
import 'package:omuga/src/category/boards.dart';
import 'package:omuga/src/category/by_google.dart';
import 'package:omuga/src/category/cards.dart';
import 'package:omuga/src/category/casual.dart';
import 'package:omuga/src/category/kids.dart';
import 'package:omuga/src/category/racing.dart';
import 'package:omuga/src/webpages/assasinator.dart';
import 'package:omuga/src/webpages/babylilycare.dart';
import 'package:omuga/src/webpages/babylilysickday.dart';
import 'package:omuga/src/webpages/bubble_shooter.dart';
import 'package:omuga/src/webpages/build_tower.dart';
import 'package:omuga/src/webpages/chess.dart';
import 'package:omuga/src/webpages/emergencysurgey.dart';
import 'package:omuga/src/webpages/google_solitare.dart';
import 'package:omuga/src/webpages/hearts.dart';
import 'package:omuga/src/webpages/highwayrider.dart';
import 'package:omuga/src/webpages/ludo.dart';
import 'package:omuga/src/webpages/monkeybounce.dart';
import 'package:omuga/src/webpages/motofury.dart';
import 'package:omuga/src/webpages/roller_splat.dart';
import 'package:omuga/src/webpages/rummy.dart';
import 'package:omuga/src/webpages/spades.dart';
import 'package:omuga/src/webpages/stacksmash.dart';
import 'package:omuga/src/webpages/sudoku.dart';
import 'package:omuga/src/webpages/tictactoe.dart';
import 'package:omuga/src/webpages/tomb_runner.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'category/adventure_screen.dart';
import 'drawer.dart';

const String testdevice = '';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          title: Center(child: Text("OMUGA-Home")),
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Container(
                  child: Card(
                    elevation: 08,
                    color: Color(0xffFFEBCD),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: populargamestitle(),
                    ),
                  ),
                ),
                Container(
                  child: populargameslist(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: categorytitle(),
                  ),
                ),
                Container(
                  child: categorylist(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Card(
                    elevation: 08,
                    color: Color(0xffFFEBCD),
                    child: adventuretitle(),
                  ),
                ),
                Container(
                  child: adventurelist(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Card(
                    elevation: 08,
                    color: Color(0xffFFEBCD),
                    child: boardtitle(),
                  ),
                ),
                Container(
                  child: boardlist(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Card(
                    elevation: 08,
                    color: Color(0xffFFEBCD),
                    child: bygoogletitle(),
                  ),
                ),
                Container(
                  child: bygooglelist(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Card(
                    elevation: 08,
                    color: Color(0xffFFEBCD),
                    child: cardstitle(),
                  ),
                ),
                Container(
                  child: cardslist(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Card(
                    elevation: 08,
                    color: Color(0xffFFEBCD),
                    child: casualtitle(),
                  ),
                ),
                Container(
                  child: casuallist(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Card(
                    elevation: 08,
                    color: Color(0xffFFEBCD),
                    child: kidstitle(),
                  ),
                ),
                Container(
                  child: kidslist(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Card(
                    elevation: 08,
                    color: Color(0xffFFEBCD),
                    child: racingtitle(),
                  ),
                ),
                Container(
                  child: racinglist(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget populargamestitle() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Popular Games",
          style: TextStyle(
            fontSize: 16,
            color: Colors.deepOrangeAccent.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget populargameslist() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Card(
                    elevation: 08,
                    color: Color(0xffFFEBCD),
                    child: InkWell(
                      onTap: () {
                        createInterstitialAd()
                          ..load()
                          ..show();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RollerSplat()),
                        );
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: Image.asset(
                                  "images/rollersplat.jpeg",
                                  height: 75,
                                  width: 75,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Roller Splat",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              Container(
                child: Card(
                    elevation: 08,
                    color: Color(0xffFFEBCD),
                    child: InkWell(
                      onTap: () {
                        createInterstitialAd()
                          ..load()
                          ..show();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TombRunner()),
                        );
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: Image.asset(
                                  "images/tombrunner.jpeg",
                                  height: 75,
                                  width: 75,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Tomb runner",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              Container(
                child: Card(
                    elevation: 08,
                    color: Color(0xffFFEBCD),
                    child: InkWell(
                      onTap: () {
                        createInterstitialAd()
                          ..load()
                          ..show();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BubbleShooter()),
                        );
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: Image.asset(
                                  "images/bubble_shooter.jpg",
                                  height: 75,
                                  width: 75,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Bubble Shooter",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              Container(
                child: Card(
                    elevation: 08,
                    color: Color(0xffFFEBCD),
                    child: InkWell(
                      onTap: () {
                        createInterstitialAd()
                          ..load()
                          ..show();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Ludo()),
                        );
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: Image.asset(
                                  "images/ludo.jpg",
                                  height: 75,
                                  width: 75,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Ludo",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              Container(
                child: Card(
                    elevation: 08,
                    color: Color(0xffFFEBCD),
                    child: InkWell(
                      onTap: () {
                        createInterstitialAd()
                          ..load()
                          ..show();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BabyLilyCare()),
                        );
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: Image.asset(
                                  "images/babylilycare.jpeg",
                                  height: 75,
                                  width: 75,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Baby Lily Care",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              Container(
                child: Card(
                    elevation: 08,
                    color: Color(0xffFFEBCD),
                    child: InkWell(
                      onTap: () {
                        createInterstitialAd()
                          ..load()
                          ..show();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MonkeyBounce()),
                        );
                      },
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: Image.asset(
                                  "images/monkeybounce.jpeg",
                                  height: 75,
                                  width: 75,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Monkey Bounce",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget adventurelist() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TombRunner()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/tombrunner.jpeg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Tomb Runner",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Assasinator()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/assasinator.jpeg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Assasinator",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MonkeyBounce()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/monkeybounce.jpeg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Monkey Bounce",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white),
                ),
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdventurePage()),
                  );
                },
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.deepOrangeAccent.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget adventuretitle() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Adventure",
          style: TextStyle(
            fontSize: 16,
            color: Colors.deepOrangeAccent.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget boardtitle() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Board",
          style: TextStyle(
            fontSize: 16,
            color: Colors.deepOrangeAccent.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget boardlist() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Ludo()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/ludo.jpg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Ludo",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Chess()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/chess.jpg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Chess",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sudoku()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/sudoku.jpeg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Sudoku",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white),
                ),
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BoardsPage()),
                  );
                },
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.deepOrangeAccent.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bygoogletitle() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "By Google",
          style: TextStyle(
            fontSize: 16,
            color: Colors.deepOrangeAccent.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget bygooglelist() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TicTacToeGame()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/tictactoe.png",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Tic-Tac-Toe",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GoogleSolitare()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/google_solitare.jpg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Solitare",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BuildTower()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/build_tower.jpeg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Build Tower",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white),
                ),
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GamesByGoogle()),
                  );
                },
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.deepOrangeAccent.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cardstitle() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Cards",
          style: TextStyle(
            fontSize: 16,
            color: Colors.deepOrangeAccent.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget cardslist() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Hearts()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/hearts.jpeg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Hearts",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Rummy()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/rummy.jpeg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Rummy",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Spades()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/spades.jpeg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Spades",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white),
                ),
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CardsPage()),
                  );
                },
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.deepOrangeAccent.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget casualtitle() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Casual",
          style: TextStyle(
            fontSize: 16,
            color: Colors.deepOrangeAccent.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget casuallist() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RollerSplat()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/rollersplat.jpeg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Roller Splat",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BubbleShooter()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/bubble_shooter.jpg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Bubble Shooter",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StackSmash()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/StackSmashTeaser.jpg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Stack Smash",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white),
                ),
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Casualpage()),
                  );
                },
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.deepOrangeAccent.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget kidstitle() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Kids",
          style: TextStyle(
            fontSize: 16,
            color: Colors.deepOrangeAccent.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget kidslist() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BabyLilyCare()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/babylilycare.jpeg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Baby Lily Care",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BabylilySickDay()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/babylilysick.jpeg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Baby Lily Sick Day",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EmergencySurgery()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/emergencysurgery.jpeg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Emergency Surgery",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white),
                ),
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KidsPage()),
                  );
                },
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.deepOrangeAccent.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget racingtitle() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Racing",
          style: TextStyle(
            fontSize: 16,
            color: Colors.deepOrangeAccent.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget racinglist() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HighwayRider()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/HighwayRider.jpg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Highway Rider",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MotoFury()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/MotoFury.jpg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Moto Fury",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: Card(
                  elevation: 08,
                  color: Color(0xffFFEBCD),
                  child: InkWell(
                    onTap: () {
                      createInterstitialAd()
                        ..load()
                        ..show();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TombRunner()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Image.asset(
                                "images/tombrunner.jpeg",
                                height: 75,
                                width: 75,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "TombRunner",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent.shade700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.white),
                ),
                onPressed: () {
                  createInterstitialAd()
                    ..load()
                    ..show();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RacingPage()),
                  );
                },
                child: Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.deepOrangeAccent.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget categorytitle() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Category",
          style: TextStyle(
            fontSize: 18,
            color: Colors.deepOrangeAccent.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget categorylist() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white),
                      ),
                      onPressed: () {
                        createInterstitialAd()
                          ..load()
                          ..show();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AdventurePage()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Adventure",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.deepOrangeAccent.shade700,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 04),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white),
                      ),
                      onPressed: () {
                        createInterstitialAd()
                          ..load()
                          ..show();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BoardsPage()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Board",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.deepOrangeAccent.shade700,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 04),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white),
                      ),
                      onPressed: () {
                        createInterstitialAd()
                          ..load()
                          ..show();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GamesByGoogle()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "By Google",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.deepOrangeAccent.shade700,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 04),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white),
                      ),
                      onPressed: () {
                        createInterstitialAd()
                          ..load()
                          ..show();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CardsPage()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Cards",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.deepOrangeAccent.shade700,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 04),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white),
                      ),
                      onPressed: () {
                        createInterstitialAd()
                          ..load()
                          ..show();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Casualpage()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Casual",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.deepOrangeAccent.shade700,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 04),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white),
                      ),
                      onPressed: () {
                        createInterstitialAd()
                          ..load()
                          ..show();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => KidsPage()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Kids",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.deepOrangeAccent.shade700,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 04),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white),
                      ),
                      onPressed: () {
                        createInterstitialAd()
                          ..load()
                          ..show();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RacingPage()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Racing",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.deepOrangeAccent.shade700,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
