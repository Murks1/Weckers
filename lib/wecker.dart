

import 'package:flutter/material.dart';
import 'package:wecker/global_data.dart';
import 'dart:convert';

class Wecker {

  String name;
  TimeOfDay weckZeit;

  Wecker({this.name,this.weckZeit}){

    this.weckZeit ??= TimeOfDay.fromDateTime(DateTime.now().toUtc().add(Duration(hours: 1)));
    this.name ??= STANDARD_NAME;
  }

  String toString(){

    Map map = {
      "name": this.name,
      "weckZeit_h": this.weckZeit.hour,
      "weckZeit_min": this.weckZeit.minute,
    };

    return json.encode(map);
  }

  static Wecker fromString(String string){
    Map map = json.decode(string);
    return new Wecker(
      name: map["name"],
      weckZeit: new TimeOfDay(hour: map["weckZeit_h"],minute: map["weckZeit_min"]),
    );
  }


}