import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Settings.dart';
import 'global_data.dart';
import 'neuerWecker_page.dart';




class TippsUndTricksPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TippsUndTricksState();
  }
}

class TippsUndTricksState extends State<TippsUndTricksPage> {
  // zu Seite "neuer Wecker " wechseln
  void _onAddButtonPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NeuerWeckerPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SafeArea(
          child: Scaffold(
              backgroundColor: BACKGROUND_COLOR,
              body: Center(
                  child: Container(
                      padding: EdgeInsets.all(16),
                      child: Column(children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            Text(
                              "Tipps und Tricks",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontSize: 30,
                              ),
                            ),

                          ],
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              Container(
                                height: 32,
                              ),
                              Container(
                                height: 15,
                              ),
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 350,
                                      child: Text(
                              "Deine täglichen Aktivitäten können Einfluss auf deinen Schlaf haben. Hier sind ein paar Tipps, die dir zu einem besseren Schlaf verhelfen können, sodass du ausgeruht aufwachst. ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Roboto',
                                    fontSize: 20,
                                    ),
                                      ),
                                    ),

                                  ]),
                              Container(
                                height: 30,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [

                                  Text(
                                    "Am Tag",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboto',
                                      fontSize: 25,
                                    ),
                                  ),

                                ],
                              ),
                              Container(
                                height: 15,
                              ),
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                        Icons.wb_sunny_sharp,
                                        color: Colors.white,
                                        size: 45,
                                    ),
                                    Container(
                                      width: 20,
                                    ),
                                    Container(
                                      width: 280,
                                      child: Text(
                                        "Halte dich regelmäßig im Sonnenlicht auf. Plane dafür etwa 30 Minuten pro Tag ein, vorzugsweise am Morgen. ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Roboto',
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),

                                  ]),
                              Container(
                                height: 15,
                              ),
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.smoke_free,
                                      color: Colors.white,
                                      size: 45,
                                    ),
                                    Container(
                                      width: 20,
                                    ),
                                    Container(
                                      width: 280,
                                      child: Text(
                                        "Vermeide Nikotin und Koffein, da beides Stimulanzien sind, die dich wachhalten können. ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Roboto',
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),

                                  ]),
                              Container(
                                height: 15,
                              ),
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.single_bed,
                                      color: Colors.white,
                                      size: 45,
                                    ),
                                    Container(
                                      width: 20,
                                    ),
                                    Container(
                                      width: 280,
                                      child: Text(
                                        "Wenn du ein Nickerchen machst, achte darauf, dass dies nicht innerhalb von sechs Stunden vor deiner normalen Schlafenszeit geschieht ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Roboto',
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),

                                  ]),
                              Container(
                                height: 15,
                              ),

                              ]

                          ),
                        )
                      ])))),
        ));
  }
}
