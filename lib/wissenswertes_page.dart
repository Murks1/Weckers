import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Settings.dart';
import 'global_data.dart';
import 'neuerWecker_page.dart';

class WissenswertesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WissenswertesState();
  }
}

class WissenswertesState extends State<WissenswertesPage> {
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
                              "Wissenswertes",
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
                                  Text(
                                    "Aufsteh Zeit ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboto',
                                      fontSize: 20,
                                    ),
                                  ),
                                ]),
                            Container(
                              height: 15,
                            ),
                            // Tapabel: Element klickbar machen
                          ]),
                        )
                      ])))),
        ));
  }
}
