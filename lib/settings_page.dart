
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Settings",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 50,
                  ),
                ),
                RaisedButton(
                  child: Text("Back"),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
                Switch(
                  value: true,
                  onChanged: (bool active){

                  },
                ),
              ],
            ),
          )
      ),
    );

  }
}
