import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wecker/tapable.dart';
import 'package:wecker/wecker.dart';

import 'runtime_data.dart';
import 'global_data.dart';
import 'home_page.dart';

class NeuerWeckerPage extends StatefulWidget {
  Wecker wecker;

  NeuerWeckerPage({this.wecker}) {
    this.wecker ??= new Wecker();
  }

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

  void _onCheckButtonPressed() {
    // speichere Wecker
    if (!RuntimeData.weckerListe.contains(widget.wecker)) {
      RuntimeData.weckerListe.add(widget.wecker);
    } else {
      //wenn wecker schon existiert, updaten
      int indexOfWecker = RuntimeData.weckerListe.indexOf(widget.wecker);
      RuntimeData.weckerListe[indexOfWecker];
    }

    RuntimeData.safe();

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  // Klassenvariablen
  String selectedTimeString;
  TimeOfDay suggestedTime1;
  TimeOfDay suggestedTime2;
  TimeOfDay suggestedTime3;
  String suggestedTime1String;
  String suggestedTime2String;
  String suggestedTime3String;

  String getAufstehZeit() {
    return suggestedTime1String;
  }

  String _onNameChanged(String text) {
    widget.wecker.name = text;
  }

  // Time of Day in Date Time Objekt umwandlen
  String generateTimeString(TimeOfDay timeOfDay) {
    final now = new DateTime.now();
    final time = new DateTime(
        now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
    return DateFormat('kk:mm').format(time);
  }

// Neue Zeit eintippen, abspeichern und aufrufen Sleeptime
  void _onTimeTap() async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: widget.wecker.weckZeit,
    );
    if (picked != null) {
      updateSleepTime(picked);

      setState(() {});
    }
  }

  //
  void updateSleepTime(TimeOfDay time) {
    widget.wecker.weckZeit = time;

    selectedTimeString = generateTimeString(widget.wecker.weckZeit);

    DateTime dateTime = (DateTime.now().add(Duration(hours: 1)));
    dateTime = new DateTime(
        dateTime.year, dateTime.month, dateTime.day, time.hour, time.minute);

    suggestedTime1 =
        TimeOfDay.fromDateTime(dateTime.subtract(Duration(hours: 9, minutes: 20)));
    suggestedTime2 = TimeOfDay.fromDateTime(
        dateTime.subtract(Duration(hours: 7, minutes: 50)));
    suggestedTime3 =
        TimeOfDay.fromDateTime(dateTime.subtract(Duration(hours: 6 , minutes: 20)));

    suggestedTime1String = generateTimeString(suggestedTime1);
    suggestedTime2String = generateTimeString(suggestedTime2);
    suggestedTime3String = generateTimeString(suggestedTime3);
  }

  @override
  void initState() {
    // aktuelle Uhrzeit aufrufen und updaten, EU zeit (1 Stunde mehr)
    updateSleepTime(widget.wecker.weckZeit);
  }

  @override
  Widget build(BuildContext context) {
    // Gesture Deterctor: Bei Wegklicken aus Textfeld wird Textfeld geschlossen
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
                                    size: 40,
                                  ),
                                )),
                            Text(
                              "Neuer Alarm",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontSize: 30,
                              ),
                            ),
                            FlatButton(
                                color: Colors.blue,
                                onPressed: _onCheckButtonPressed,
                                shape: CircleBorder(
                                    side: BorderSide(
                                        color: Colors.white, width: 2)),
                                child: Container(
                                  padding: EdgeInsets.all(4),
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 40,
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
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
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
                                ],
                              ),
                              Container(
                                height: 30,
                              ),
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FlatButton(

                                        onPressed: () {},
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(100),
                                            side: BorderSide(
                                                color: Colors.white, width: 2)),
                                        child: Text(
                                          suggestedTime1String,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Roboto',
                                            fontSize: 30,
                                          ),
                                        )),
                                    FlatButton(
                                        color: Colors.blue,
                                        onPressed: () {},
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(100),
                                            side: BorderSide(
                                                color: Colors.white, width: 2)),
                                        child: Text(
                                          suggestedTime2String,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Roboto',
                                            fontSize: 30,
                                          ),
                                        )),
                                    FlatButton(
                                        onPressed: () {},
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(100),
                                            side: BorderSide(
                                                color: Colors.white, width: 2)),
                                        child: Text(
                                          suggestedTime3String,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Roboto',
                                            fontSize: 30,
                                          ),
                                        ))
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Tapable(
                                        child: Container(
                                      decoration: ShapeDecoration(
                                        shape: CircleBorder(
                                            side: BorderSide(
                                                color: Colors.white, width: 2)),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.all(4),
                                        child: Text(
                                          "Mo",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Roboto',
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    )),
                                    Tapable(
                                        child: Container(
                                      decoration: ShapeDecoration(
                                        shape: CircleBorder(
                                            side: BorderSide(
                                                color: Colors.white, width: 2)),
                                      ),
                                      /* onPressed: () {},
                                      shape: CircleBorder(
                                          side: BorderSide(
                                              color: Colors.white, width: 2)),*/
                                      child: Container(
                                        padding: EdgeInsets.all(4),
                                        child: Text(
                                          "Di",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Roboto',
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    )),
                                    Tapable(
                                      child: Container(
                                        decoration: ShapeDecoration(
                                          shape: CircleBorder(
                                              side: BorderSide(
                                                  color: Colors.white,
                                                  width: 2)),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.all(4),
                                          child: Text(
                                            "Mi",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Roboto',
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Tapable(
                                      child: Container(
                                        decoration: ShapeDecoration(
                                          shape: CircleBorder(
                                              side: BorderSide(
                                                  color: Colors.white,
                                                  width: 2)),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.all(4),
                                          child: Text(
                                            "Do",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Roboto',
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Tapable(
                                      child: Container(
                                        decoration: ShapeDecoration(
                                          shape: CircleBorder(
                                              side: BorderSide(
                                                  color: Colors.white,
                                                  width: 2)),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.all(4),
                                          child: Text(
                                            "Fr",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Roboto',
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Tapable(
                                      child: Container(
                                        decoration: ShapeDecoration(
                                          shape: CircleBorder(
                                              side: BorderSide(
                                                  color: Colors.white,
                                                  width: 2)),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.all(4),
                                          child: Text(
                                            "Sa",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Roboto',
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Tapable(
                                      child: Container(
                                        decoration: ShapeDecoration(
                                          shape: CircleBorder(
                                              side: BorderSide(
                                                  color: Colors.white,
                                                  width: 2)),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.all(4),
                                          child: Text(
                                            "So",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Roboto',
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
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
                                      "Täglich Wiederholen ",
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
                                onChanged: _onNameChanged,
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
                                      "Weckerton: ",
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
                              Text(
                                "New Horizon",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontSize: 15,
                                ),
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
