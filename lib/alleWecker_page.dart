import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Settings.dart';
import 'global_data.dart';

class AlleWeckerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AlleWeckerState();
  }
}
class AlleWeckerState extends State<AlleWeckerPage>{
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


                        children: [ Text("Alle Wecker",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: 30,
                          ),
                        ),]
                    ),
                    RaisedButton(
                      child: Text("Back"),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    ),







                  ],
                ),
              )
          )
      ),
    );

  }
}