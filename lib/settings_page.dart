import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Settings.dart';
import 'global_data.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SettingsPageState();
  }
}

class SettingsPageState extends State<SettingsPage> {
  // Funktion Zeit in sekunden anzeigen
  void onTimeSwitchChange(bool change) {
    Settings.showTimeInSeconds = change;
    Settings.safe();
    setState(() {});
  }

  // Funktion die als Erstes aufgerufen wird
  @override
  void initState() {}

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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 32,
                    ),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Einstellungen",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontSize: 30,
                            ),
                          ),
                        ]),
                    /* RaisedButton(
                    child: Text("Back"),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),*/
                    Text(
                      "Uhr",
                      style: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'Roboto',
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Zeit mit Sekunden anzeigen",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 20,
                          ),
                        ),
                        Switch(
                          value: Settings.showTimeInSeconds,
                          onChanged: onTimeSwitchChange,
                        ),
                      ],
                    ),
                    Container(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Datum und Uhrzeit ändern",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 20,
                          ),
                        ),
                        /*Switch(
                        value: true,
                        onChanged: (bool active){

                        },
                      ),*/
                      ],
                    ),
                    Container(
                      height: 15,
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Container(
                      height: 15,
                    ),
                    Text(
                      "Wecker",
                      style: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'Roboto',
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Einschlafzeit mittels FitBit ermitteln",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 20,
                          ),
                        ),
                        Switch(
                          value: true,
                          onChanged: (bool active) {},
                        ),
                      ],
                    ),
                    Container(
                      height: 15,
                    ),
                    Text(
                      "Zeit zum Einschlafen",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    Text(
                      "Stummschalten nach ",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    Text(
                      "Stummschalten nach",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    Text(
                      "Schlafenzszeit Benachrichtigung",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ))),
        ));
  }
}
