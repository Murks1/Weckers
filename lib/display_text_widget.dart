import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget{

  IconData icon;
  String text;

  DisplayText ({ IconData icon, String text})
  {
    this.icon = icon;
    this.text = text;

  }


  @override
  Widget build(BuildContext context) {

    return  Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 45,
          ),
          Container(
            width: 20,
          ),
          Container(
            width: 280,
            child: Text(
               text ,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 20,
              ),
            ),
          ),
        ]);
  }}