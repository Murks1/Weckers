import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Settings.dart';
import 'global_data.dart';

class NeuerWeckerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NeuerWeckerState();
  }
}
class NeuerWeckerState extends State<NeuerWeckerPage>{

  void _onAddButtonPressed(){

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: BACKGROUND_COLOR,
          body: Center(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(height: 32,),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,


                        children: [ Text("Neuer Wecker",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 30,
                          ),
                        ),]
                    ),
                   /*  RaisedButton(
                    child: Text("Back"),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),*/
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                            onPressed: _onAddButtonPressed,
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.white,width: 2)
                            ),
                            child: Container(
                              padding: EdgeInsets.all(4),
                              child: Icon(Icons.add,color: Colors.white,size: 45,),
                            )
                        ),
                      ],
                    ),
                    Container(height: 15,),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,


                        children: [ Text("Täglich Wiederholen ",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 20,
                          ),
                        ),]
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Container(height: 15,),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,


                        children: [ Text("Aufsteh Zeit ",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 20,
                          ),
                        ),]
                    ),
                    Container(height: 15,),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,


                        children: [ Text("Optimale Zeit zum Schlafen gehen ",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 20,
                          ),
                        ),]
                    ),
                    Container(height: 15,),
                    Divider(
                      color: Colors.white,
                    ),
                    Container(height: 15,),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,


                        children: [ Text("Vibrieren ",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 20,
                          ),
                        ),]
                    ),
                    Container(height: 15,),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,


                        children: [ Text("Sanftes Wecken ",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 20,
                          ),
                        ),]
                    ),
                    Container(height: 15,),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,


                        children: [ Text("Schlafenszeit Benachrichtigung ",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 20,
                          ),
                        ),]
                    ),
                    Container(height: 15,),
                    Divider(
                      color: Colors.white,
                    ),
                    Container(height: 15,),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,


                        children: [ Text("Name des Weckers: ",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 20,
                          ),
                        ),]
                    ),
                    Container(height: 15,),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,


                        children: [ Text("Weckerton:  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 20,
                          ),
                        ),]
                    ),
                    Container(height: 15,),
                    Divider(
                      color: Colors.white,
                    ),
                    Container(height: 15,),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,


                        children: [ Text("Smart Home:  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 20,
                          ),
                        ),]
                    ),
                    Container(height: 15,),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,


                        children: [ Text("   Staubsauger im EG:  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 15,
                          ),
                        ),]
                    ),
                    Container(height: 15,),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,


                        children: [ Text("   Lichter und Rolläden  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 15,
                          ),
                        ),]
                    ),
                    Container(height: 15,),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,


                        children: [ Text("   Alexa Playlist  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 15,
                          ),
                        ),]
                    ),
                    Container(height: 15,),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,


                        children: [ Text("   + Presets hinzufügen  ",
                          style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Roboto',
                            fontSize: 15,
                          ),
                        ),]
                    ),
                    Container(height: 15,),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,


                        children: [ Text("   - Presets löschen  ",
                          style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Roboto',
                            fontSize: 15,
                          ),
                        ),]
                    ),







                  ],
                ),
              )
          )
      ),
    );

  }
}