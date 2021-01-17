import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Settings.dart';
import 'global_data.dart';
import 'neuerWecker_page.dart';

class UeberdieAppPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UeberdieAppState();
  }
}

class UeberdieAppState extends State<UeberdieAppPage> {
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
                              "Better-Sleep App",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView(children: [
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
                                      "„Sleep App“ bietet einen Überblick über dein Schlafverhalten. Mithilfe vom Schlafmonitoren kannst du herausfinden, wie lange du dich im Bett befindest und schläfst. Du kannst deine Schlafdauer selbst erfassen, indem du die erforderlichen Daten von Hand eintippst. Auch kannst du selbst bestimmen wann du geweckt werden möchtest, dabei hilft dir die Sleep App die optimale Zeit für dich zu bestimmen. ",
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
                                  Container(
                                    width: 350,
                                    child: Text(
                                      "Die Zeitspanne „im Bett“ zeigt den Zeitraum an, indem du dich im Bett befindest und vorhast zu schlafen. In der Regel handelt es sich bei den meisten Personen, um die Zeitspanne zwischen dem Ausschalten des Lichts und dem Aufstehen. ",
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
                                  Container(
                                    width: 350,
                                    child: Text(
                                      "Die Zeitspanne „schlafend“ steht für den Zeitraum, indem du schläfst.",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Roboto',
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ]),



                            // Tapabel: Element klickbar machen
                          ]),
                        )
                      ])))),
        ));
  }
}
