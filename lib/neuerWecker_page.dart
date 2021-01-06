import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wecker/tapable.dart';

import 'Settings.dart';
import 'global_data.dart';

class NeuerWeckerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NeuerWeckerState();
  }
}

class NeuerWeckerState extends State<NeuerWeckerPage> {

  // Zurück gehen bei auf Clear Button drücken
  void _onClearButtonPressed() {
    Navigator.pop(context);
  }

  void _onCheckButtonPressed() {}

  // Klassenvariablen
  TimeOfDay selectedTime;
  String selectedTimeString;

  // Time of Day in Date Time Objekt umwandlen
  String generateTimeString() {

    final now = new DateTime.now();
    final Time = new DateTime(now.year, now.month, now.day, selectedTime.hour, selectedTime.minute);
    return DateFormat('kk:mm').format(Time);
    }

// Neue Zeit eintippen, abspeichern
  void _onTimeTap() async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,

    );
    if(picked != null)
      {

        selectedTime = picked;
        selectedTimeString = generateTimeString();
        setState(() {

        });
      }

  }

  @override
  void initState() {
    // aktuelle Uhrzeit aufrufen, EU zeit (1 Stunde mehr)
    selectedTime = TimeOfDay.fromDateTime(DateTime.now().add(Duration(hours: 1)));
    // String aus akuteller Uhrzeit anzeigen
    selectedTimeString = generateTimeString();

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
                            FlatButton(
                                onPressed: _onClearButtonPressed,
                                shape: CircleBorder(
                                    side: BorderSide(
                                        color: Colors.white, width: 2)),
                                child: Container(
                                  padding: EdgeInsets.all(4),
                                  child: Icon(
                                    Icons.clear,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                )),
                            Text(
                              "Neuer Wecker",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontSize: 30,
                              ),
                            ),
                            FlatButton(
                                onPressed: _onCheckButtonPressed,
                                shape: CircleBorder(
                                    side: BorderSide(
                                        color: Colors.white, width: 2)),
                                child: Container(
                                  padding: EdgeInsets.all(4),
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                )),
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
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                              Tapable(
                                onTap: _onTimeTap,
                                child: Text(
                                  selectedTimeString,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 45,
                                  ),
                                ),
                              ),
                              Container(
                                height: 15,
                              ),
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Optimale Zeit zum Schlafen gehen ",
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
                              Divider(
                                color: Colors.white,
                              ),
                              Container(
                                height: 15,
                              ),
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: true,
                                      onChanged: (bool active) {},
                                    ),
                                    Text(
                                      "Täglich Wiederholen ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Roboto',
                                        fontSize: 20,
                                      ),
                                    ),
                                  ]),
                              Divider(
                                color: Colors.white,
                              ),
                              Container(
                                height: 15,
                              ),
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: true,
                                      onChanged: (bool active) {},
                                    ),
                                    Text(
                                      "Vibrieren ",
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
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: true,
                                      onChanged: (bool active) {},
                                    ),
                                    Text(
                                      "Sanftes Wecken ",
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
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: true,
                                      onChanged: (bool active) {},
                                    ),
                                    Text(
                                      "Schlafenszeit Benachrichtigung ",
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
                              Divider(
                                color: Colors.white,
                              ),
                              Container(
                                height: 15,
                              ),
                              Text(
                                "Name des Weckers: ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                ),
                              ),
                              Container(
                                height: 15,
                              ),
                              TextField(
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                ),
                                decoration: InputDecoration(
                                    hintText: "Wecker Name",
                                    hintStyle: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: Colors.white24),
                                    enabledBorder: new OutlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Colors.white24))),
                              ),
                              Container(
                                height: 15,
                              ),
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Weckerton:  ",
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
                              Divider(
                                color: Colors.white,
                              ),
                              Container(
                                height: 15,
                              ),
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: true,
                                      onChanged: (bool active) {},
                                    ),
                                    Text(
                                      "Smart Home:  ",
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
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "   Staubsauger im EG:  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Roboto',
                                        fontSize: 15,
                                      ),
                                    ),
                                  ]),
                              Container(
                                height: 15,
                              ),
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "        Lichter und Rolläden  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Roboto',
                                        fontSize: 15,
                                      ),
                                    ),
                                  ]),
                              Container(
                                height: 15,
                              ),
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "        Alexa Playlist  ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Roboto',
                                        fontSize: 15,
                                      ),
                                    ),
                                  ]),
                              Container(
                                height: 15,
                              ),
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "       + Presets hinzufügen  ",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontFamily: 'Roboto',
                                        fontSize: 15,
                                      ),
                                    ),
                                  ]),
                              Container(
                                height: 15,
                              ),
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "        - Presets löschen  ",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontFamily: 'Roboto',
                                        fontSize: 15,
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                        )
                      ])))),
        ));
  }
}
