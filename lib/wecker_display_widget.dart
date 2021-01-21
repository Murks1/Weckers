import 'package:flutter/material.dart';
import 'wecker.dart';
import 'package:intl/intl.dart';

class WeckerDisplayWidget extends StatelessWidget {
  Wecker wecker;

  WeckerDisplayWidget({this.wecker});

  // Time of Day in Date Time Objekt umwandlen
  String generateTimeString(TimeOfDay timeOfDay) {
    final now = new DateTime.now();
    final time = new DateTime(
        now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute);
    return DateFormat('kk:mm').format(time);
  }

  @override
  Widget build(BuildContext context) {

    String weckZeitString = generateTimeString(wecker.weckZeit);

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  wecker.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 25,
                  ),
                ),
              ),
              Switch(
                value: true,
              )
            ],
          ),
          Text(
            weckZeitString,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
              fontSize: 20,
            ),
          ),
        ],

    );
  }
}
