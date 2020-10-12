import 'package:flutter/material.dart';
import 'package:omuga/src/drawer.dart';
import 'package:omuga/src/webpages/assasinator.dart';
import 'package:omuga/src/webpages/knifeflip.dart';
import 'package:omuga/src/webpages/monkeybounce.dart';
import 'package:omuga/src/webpages/tomb_runner.dart';
import 'package:firebase_admob/firebase_admob.dart';

const String testdevice = '';

class AdventurePage extends StatefulWidget {
  @override
  _AdventurePageState createState() => _AdventurePageState();
}

class _AdventurePageState extends State<AdventurePage> {
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
          title: Text("Adventure game"),
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
                  MaterialPageRoute(builder: (context) => TombRunner()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/tombrunner.jpeg",
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
                                "Tomb Runner",
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
                                "Tomb Runner is a 3D endless running video game.The player has to control an explorer who has obtained an ancient relicand is running.\nThis is similar to Temple Run",
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
                  MaterialPageRoute(builder: (context) => Assasinator()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/assasinator.jpeg",
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
                                "Assasinator",
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
                                "This is a simple game of strategy. In this game a player has to kill the soilder without getting noticed.",
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
                  MaterialPageRoute(builder: (context) => MonkeyBounce()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/monkeybounce.jpeg",
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
                                "Monkey Bounce",
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
                                "In this game there is a monkey at the top of tree and the player has to bring the monkey down without collision with obstacle.",
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
                  MaterialPageRoute(builder: (context) => KnifeFlip()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "images/KnifeFlip.jpg",
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
                                "Knife Flip",
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
                                "In this game the player has to flip the knife in a way that it stick to its next surface.",
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
      ],
    );
  }
}
