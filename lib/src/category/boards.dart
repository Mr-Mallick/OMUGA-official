import 'package:flutter/material.dart';
import 'package:omuga/src/drawer.dart';
import 'package:omuga/src/webpages/8ballpool.dart';
import 'package:omuga/src/webpages/chess.dart';
import 'package:omuga/src/webpages/ludo.dart';
import 'package:omuga/src/webpages/sudoku.dart';
import 'package:firebase_admob/firebase_admob.dart';

const String testdevice = '';

class BoardsPage extends StatefulWidget {
  @override
  _BoardsPageState createState() => _BoardsPageState();
}

class _BoardsPageState extends State<BoardsPage> {
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
          title: Text("Board game"),
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
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: details(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget details() {
    return Column(
      children: <Widget>[
        Container(
          child: Card(
            color: Color(0xffFFEBCD),
            child: InkWell(
              onTap: () {
                createInterstitialAd()
                  ..load()
                  ..show();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ballpool()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/8ball.jpg",
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "8 Ball Pool",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "8 Ball is a pool billiards played on a billiard table with six pockets, cue sticks, and sixteen billiard balls.",
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Card(
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/chess.jpg",
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Chess",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Chess is a two-player strategy board game played on a checkered board with 64-squares arranged in 8x8 grid.",
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Card(
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/ludo.jpg",
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Ludo",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Ludo is a strategy board game for 2 to 4 players, in which the player race their four tokens from start to finish according to the rolls of a single die.",
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Card(
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/sudoku.jpeg",
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Sudoku",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Sudoku is a logic based, combinatorial number placement puzzle. the object is to fill a 9x9 grid with digits so that each column, each row and each of the nine 3x3 subgrid that compose the grid contains all the didgit from 1-9.",
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
