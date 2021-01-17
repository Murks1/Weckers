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
                                      "Wenn du ein Nickerchen machst, achte darauf, dass dies nicht innerhalb von sechs Stunden vor deiner normalen Schlafenszeit geschieht. ",
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
                                    size: 45,
                                  ),
                                  Container(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 280,
                                    child: Text(
                                      "Versuche, deine sportlichen Aktivitäten mindestens zwei bis drei Stunden vor dem Zubettgehen auszuführen. ",
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
                                    Icons.fastfood,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                  Container(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 280,
                                    child: Text(
                                      "Verzichte darauf, einige Stunden vor dem Schlafengehend große Mahlzeiten oder viel Flüssigkeit zu dir zu nehmen. ",
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
                                  "Vor dem Schlafen",
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
                                    Icons.no_drinks,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                  Container(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 280,
                                    child: Text(
                                      "Alkohol kann die Qualität des Schlafs beeinträchtigen. . ",
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
                                    Icons.lightbulb_outlined,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                  Container(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 280,
                                    child: Text(
                                      "Signalisiere deinem Körper, dass es Zeit zum Schlafengehen ist, indem du das Licht dimmst. ",
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
                                    Icons.menu_book_outlined,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                  Container(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 280,
                                    child: Text(
                                      "Entspanne dich, bevor du zu Bett gehst. Mache es zu einem abendlichen Ritual ein Buch zu lesen, Musik zu hören oder Tagesbuch zu schreiben ",
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
                                    Icons.bathtub_outlined,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                  Container(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 280,
                                    child: Text(
                                      "Ein heißes Bad kann dazu beitragen, dass du zur Ruhe kommst und entspannst.",
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
                                  "Während der Nacht ",
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
                                      "Achte darauf, dass dein Schlafzimmer dir einen guten Schlaf ermöglicht.",
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
                                    Icons.nights_stay,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                  Container(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 280,
                                    child: Text(
                                      "Achte darauf, dass dein Schlafzimmer kühl und dunkel ist.",
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
                                    Icons.logout,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                  Container(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 280,
                                    child: Text(
                                      "Verbanne elektronische Geräte und andere Ablenkungen aus deinem Schlafzimmer.",
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
                                    Icons.hourglass_bottom,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                  Container(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 280,
                                    child: Text(
                                      "Bleibe nicht wach im Bett liegen. Wenn du länger als 20 Minuten nicht einschlafe kannst, stehe auf und beschäftige dich mit etwas Entspannendem, bis du dich wieder schlafbereit fühlst. ",
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
                                  "Weitere Vorschläge ",
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
                            Container(
                              height: 15,
                            ),
                            Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.calendar_today_sharp,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                  Container(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 280,
                                    child: Text(
                                      "Versuche, einen möglichst regelmäßigen Schlafzeitplan einzuhalten. ",
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
                                    size: 45,
                                  ),
                                  Container(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 280,
                                    child: Text(
                                      "Sorge für helle Beleuchtung, wenn du nachts wach bist und vermeide Sonnenlicht vor dem Zubettgehen. ",
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
                                    Icons.nights_stay,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                  Container(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 280,
                                    child: Text(
                                      "Falls keine Jalousien oder Vorhänge in deinem Schlafzimmer vorhanden sind, verwende eine Schlafmaske . ",
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
                                    Icons.headset,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                  Container(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 280,
                                    child: Text(
                                      "Ohrstöpsel mit weichem Rauschen können helfen, Geräusche zu unterdrücken, die dich möglicherweise aufwecken. ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Roboto',
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ]),



                          ]),
                        )
                      ])))),
        ));
  }
}
