
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'global_data.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: BACKGROUND_COLOR,
          body: Center(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(height: 32,),

                Text("Einstellungen",

                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 30,
                  ),
                ),
                RaisedButton(
                  child: Text("Back"),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
                Text("Uhr",
                  style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'Roboto',
                    fontSize: 20,
                  ),
                ),
                Container(height: 15,),
                Text("Zeit mit Sekunden anzeigen",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 20,
                  ),
                ),
                Switch(
                  value: true,
                  onChanged: (bool active){

                  },
                ),
                Container(height: 15,),
                Text("Datum und Uhrzeit ändern",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 20,
                  ),
                ),
                Switch(
                  value: true,
                  onChanged: (bool active){

                  },
                ),
                Container(height: 15,),
                Text("_____________________________________________",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 20,
                  ),
                ),
                Container(height: 15,),

                Text("Wecker",
                  style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'Roboto',
                    fontSize: 20,
                  ),
                ),
                Container(height: 15,),
                Text("Einschlafzeit mittels FitBit ermitteln",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 20,
                  ),
                ),
                Switch(
                  value: true,
                  onChanged: (bool active){

                  },
                ),
                Container(height: 15,),
                Text("Zeit zum Einschlafen",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 20,
                  ),
                ),
              ],
            )
          )
      ),
    );

  }
}
