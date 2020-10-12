import 'package:flutter/material.dart';
import 'package:omuga/src/drawer.dart';
import 'package:omuga/src/webpages/gofish.dart';
import 'package:omuga/src/webpages/google_solitare.dart';
import 'package:omuga/src/webpages/hearts.dart';
import 'package:omuga/src/webpages/rummy.dart';
import 'package:omuga/src/webpages/spades.dart';
import 'package:firebase_admob/firebase_admob.dart';

const String testdevice = '';

class CardsPage extends StatefulWidget {
  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
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
          title: Text("Cards Game"),
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
                  MaterialPageRoute(builder: (context) => GoFish()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/gofish.jpeg",
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
                                "Go Fish",
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
                                "In this game you have to ask other players for the card if they have it they'll give the cards and if not you just fish from the stack.\nYou have to complete your collection.",
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
                  MaterialPageRoute(builder: (context) => Hearts()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/hearts.jpeg",
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
                                "Hearts",
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
                                "The objective of the hearts is to get as few points as possible",
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
                                "Solitare",
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
                  MaterialPageRoute(builder: (context) => Rummy()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/rummy.jpeg",
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
                                "Rummy",
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
                                "Rummy is a classic card game where the objective is to first get rid of all cards, by creating melds.",
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
                  MaterialPageRoute(builder: (context) => Spades()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/spades.jpeg",
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
                                "Spades",
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
                                "The four players are in fixed partnerships, with partners sitting opposite each other.Deals and play are clockwise.",
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
