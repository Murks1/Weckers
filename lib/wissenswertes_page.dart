import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'runtime_data.dart';
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
                              height: 30,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Empfohlene optimale Zeiten für",
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
                                    Icons.bedtime_rounded,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Container(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 280,
                                    child: Text(
                                      "Einschlafen:       20 - 22 Uhr ",
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
                                    Icons.wb_sunny_sharp,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Container(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 280,
                                    child: Text(
                                      "Aufstehen:         6.45 - 7.15 Uhr ",
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
                                    Icons.cloud,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Container(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 280,
                                    child: Text(
                                      "Tiefschlaf:          02 - 04 Uhr ",
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
                                    Icons.lightbulb,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Container(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 280,
                                    child: Text(
                                      "Konzentration:   08 - 10 Uhr ",
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
                                    Icons.sports_soccer,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  Container(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 280,
                                    child: Text(
                                      "Bewegung:          14 - 16 Uhr ",
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
                                  "Schlafzyklen",
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
                                  Container(
                                    width: 350,
                                    child: Text(
                                      "Es gibt mehrere Schlafphasen, die sich unterschiedlich auf unseren Körper auswirken. Generell wird eine Phase durch unsere innere biologische Uhr festgelegt und durch die Art der Gehirnströme gemessen. ",
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
                                      "Bekannt ist, dass Träume während der REM-Phase (Rapid Eye Movement) entstehen und dass Tiefschlaf eine regenerative Wirkung auf den Körper ausübt. Während des Schlafs werden die unterschiedlichen Phasen meist mehrfach durchlaufen. ",
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
                                      "Ab ca. 20.00 Uhr beginnt die Melatoninproduktion (Schlafhormon) im Körper, es wird daher empfohlen zwischen 20.00 Uhr und 22.00 Uhr einzuschlafen. Um 2.00 Uhr nachts haben wir den tiefsten Schlaf. Ab 4.30 steigt der Blutdruck und ca. ab 7.00 Uhr hört der Körper auf Melatonin zu produzieren, dies wäre eine optimale Uhrzeit, um aufzustehen. ",
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
                                  "Warum ist Schlaf so wichitg?",
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
                                  Container(
                                    width: 350,
                                    child: Text(
                                      "Schlaf trifft ein, wenn sowohl körperliche als auch kognitive Prozesse in einen unbewussten, regenerativen Zustand übergehen. Während du schläfst, verändern oder setzten sich Grundfunktionen des Körpers oder aus, dabei finden wichtige spezialisierte Funktionen statt. ",
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
                                      "Von deinem Schlaf bleibt dir möglicherweise nicht viel in Erinnerung, aber du wirst ungefähr ein drittel deines Lebens in diesem Zustand verbringen. ",
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
                                      "Dein Schlaf kann bemerkenswerte und wichtige Kriterien für dich erledigen. Er ermöglicht es deinem Körper zur Ruhe zu kommen und wichtige Aufgaben zur Unterstützung deines Gedächtnisses, Hormonhaushalts, Immunsystem und weitere wesentliche Funktionen auszuführen. ",
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
                                      "Schlaf verbessert die Fähigkeit des Gehirns zu lernen, hilft dem Körper bei der Bekämpfung von Infektionen und erlaubt es dem Herzen zur Ruhe zu kommen, auch der Blutdruck wird gesenkt. All diese und weitere Bereiche und Funktionen können darunter leiden, wenn der Körper nicht genug Schlaf bekommt. ",
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
                                      "Wie viel Schlaf ein Mensch benötigt, hängt von mehreren Faktoren (Alter, Beruf, Körperlicher Ausgleich, Ernährung) ab und ist individuell von den Personen abhängig. In der Regel sollten Erwachsene zwischen 7 – 8 Stunden, Kinder und Jugendliche zwischen 9- 12 Stunden und Kleinkinder zwischen 12-15 Stunden schlafen. ",
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
