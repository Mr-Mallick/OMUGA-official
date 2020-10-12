import 'package:flutter/material.dart';
import 'package:omuga/src/drawer.dart';
import 'package:omuga/src/webpages/build_tower.dart';
import 'package:omuga/src/webpages/google_cricket.dart';
import 'package:omuga/src/webpages/google_snake.dart';
import 'package:omuga/src/webpages/google_solitare.dart';
import 'package:omuga/src/webpages/minesweeper.dart';
import 'package:omuga/src/webpages/pony_express.dart';
import 'package:omuga/src/webpages/tictactoe.dart';
import 'package:firebase_admob/firebase_admob.dart';

const String testdevice = '';

class GamesByGoogle extends StatefulWidget {
  @override
  _GamesByGoogleState createState() => _GamesByGoogleState();
}

class _GamesByGoogleState extends State<GamesByGoogle> {
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
          title: Text("Games By Google"),
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
                  MaterialPageRoute(builder: (context) => Minesweeper()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/minesweeper.jpeg",
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
                                "Minesweeper",
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
                                "The objective of the game is to clear the rectangular board contaning hidden mines or bombs without detonating them, with the help from clues about the number of neighboring mines in each field",
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          ),
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
                  MaterialPageRoute(builder: (context) => TicTacToeGame()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/tictactoe.png",
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
                                "Tic Tac Toe",
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
                                "Tic-Tac-Toe is a paper and pencil game of two players.\nThe player who succeeds in placing three of their marks in a horizontal,vertical or diagonal row is the winner.",
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          ),
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
                  MaterialPageRoute(builder: (context) => GoogleSolitare()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/google_solitare.jpg",
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
                                "Solitaire",
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
                                "Solitaire is a tabletop game which one can play by oneself, usually with cards.Create a sequence of cards to complete game.",
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          ),
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
                  MaterialPageRoute(builder: (context) => BuildTower()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/build_tower.jpeg",
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
                                "Build Tower",
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
                                "A game of skill, dexterity, planning and speed. Balance the blocks and build your tower against the clock.",
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          ),
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
                  MaterialPageRoute(builder: (context) => GoogleSnake()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/google_snake.jpg",
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
                                "Snake",
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
                                "This game is just like casual nokia snake game.The major differences are that it has good graphics and is touch capable.",
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          ),
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
                  MaterialPageRoute(builder: (context) => GoogleCricket()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/google_cricket.jpeg",
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
                                "Cricket",
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
                                "This game is developed by Google. This game is based on Cricket.",
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          ),
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
                  MaterialPageRoute(builder: (context) => PonyExpress()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/pony_express.jpeg",
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
                                "Pony Express",
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
                                "Google developed animated Doodle game PONY Express.In this you have to deliver the mail across regions.",
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.deepOrangeAccent.shade700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
