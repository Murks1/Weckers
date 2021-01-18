import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'runtime_data.dart';
import 'global_data.dart';
import 'neuerWecker_page.dart';
import 'wecker_display_widget.dart';

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
                    Expanded(
                      child: ListView.builder(
                        itemCount: RuntimeData.weckerListe.length == 0
                              ? 0
                              : RuntimeData.weckerListe.length * 2 - 1,
                        itemBuilder: (BuildContext context, int index) {
                          if (index % 2 == 1) {
                            return Container(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                child: Divider(
                                  color: Colors.white,
                                ));
                          }

                          int arrayIndex = (index / 2).round();
                          return Dismissible(
                            key: Key(RuntimeData.weckerListe[arrayIndex].toString()),
                            onDismissed: (direction) {
                              setState(() {
                                RuntimeData.weckerListe.removeAt(arrayIndex);
                                RuntimeData.safe();
                              });
                            },
                            child: WeckerDisplayWidget(
                              wecker: RuntimeData.weckerListe[arrayIndex])
                            );
                          }),
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
