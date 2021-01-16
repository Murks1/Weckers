import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Settings.dart';
import 'global_data.dart';
import 'neuerWecker_page.dart';




class AlleWeckerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AlleWeckerState();
  }
}

class AlleWeckerState extends State<AlleWeckerPage> {
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
                            "Alle Wecker",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontSize: 30,
                            ),
                          ),
                        ]),
                    RaisedButton(
                      child: Text("Back"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                            onPressed: _onAddButtonPressed,
                            shape: CircleBorder(
                                side:
                                    BorderSide(color: Colors.white, width: 2)),
                            child: Container(
                              padding: EdgeInsets.all(4),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 45,
                              ),
                            )),
                      ],
                    ),
                    Container(
                      height: 64,
                    )
                  ],
                ),
              ))),
        ));
  }
}
