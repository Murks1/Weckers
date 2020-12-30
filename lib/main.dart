import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wecker/global_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wecker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String time;
  String date;

  DateTime getCurrentEUTime(){
    DateTime utc_now = DateTime.now().toUtc();
    DateTime eu_now = utc_now.add(Duration(hours: 1));
    return eu_now;
  }

  String generateTimeString(){
    return DateFormat('kk:mm').format(getCurrentEUTime());
  }

  String generateDateString(){
    return DateFormat('E. d. MMM').format(getCurrentEUTime());
  }

  void update() async{

    while(true){
      time = generateTimeString();
      date = generateDateString();

      await Future.delayed(Duration(minutes: 1));
      setState(() {});
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
              children: [
                Text(time,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 100
                  ),
                ),
                Text(date,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 30
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
