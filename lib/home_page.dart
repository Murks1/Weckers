
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wecker/Settings.dart';
import 'package:wecker/global_data.dart';
import 'package:wecker/settings_page.dart';

class HomePage extends StatefulWidget {

  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String time;
  String date;

  DateTime getCurrentEUTime(){
    DateTime utc_now = DateTime.now().toUtc();
    DateTime eu_now = utc_now.add(Duration(hours: 1));
    return eu_now;
  }

  void _onAlarmButtonPressed(){

  }

  void _onAddButtonPressed(){

  }

  void _onSettingsButtonPressed(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()),);
  }
  
  String generateTimeString(){
    if(Settings.showTimeInSeconds )
      {
        return DateFormat('kk:mm:ss').format(getCurrentEUTime());
      }
    else
      {
        return DateFormat('kk:mm').format(getCurrentEUTime());
      }

  }

  String generateDateString(){
    return DateFormat('E. d. MMM').format(getCurrentEUTime());
  }

  void update() async{

    while(true){
      time = generateTimeString();
      date = generateDateString();
      setState(() {});

      await Future.delayed(Duration(seconds: 1));
    }

  }

  @override
  void initState() {
    super.initState();
    update();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: BACKGROUND_COLOR,
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(time,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: 100,
                  ),
                ),
                Text(date,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 30
                  ),
                ),
                Container(height: 32,),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text("Hier kommen die kommenden Wecker",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 30
                      ),
                    )
                ),
                Expanded(
                  child: Container(
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton(
                        onPressed: _onAlarmButtonPressed,
                        shape: CircleBorder(
                            side: BorderSide(color: Colors.white,width: 2)
                        ),
                        child: Container(
                          padding: EdgeInsets.all(4),
                          child: Icon(Icons.alarm,color: Colors.white,size: 45,),
                        )
                    ),
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
                    FlatButton(
                        onPressed: _onSettingsButtonPressed,
                        shape: CircleBorder(
                            side: BorderSide(color: Colors.white,width: 2)
                        ),
                        child: Container(
                          padding: EdgeInsets.all(4),
                          child: Icon(Icons.settings,color: Colors.white,size: 45,),
                        )
                    ),

                  ],
                ),
                Container(height: 64,)
              ],
            ),
          )
      ),
    );
  }
}
