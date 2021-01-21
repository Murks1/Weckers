import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wecker/runtime_data.dart';
import 'package:wecker/global_data.dart';
import 'package:wecker/neuerWecker_page.dart';
import 'package:wecker/settings_page.dart';
import 'package:wecker/tagebuch_page.dart';
import 'package:wecker/tipps_und_tricks_page.dart';
import 'package:wecker/ueber_die_app_page.dart';
import 'package:wecker/wissenswertes_page.dart';

import 'alleWecker_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

// Side Drawer Menu
class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'Weitere Infos zur App',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
              color: BACKGROUND_COLOR,
            ),
          ),
          ListTile(
              leading: Icon(Icons.emoji_objects_outlined),
              title: Text('Tipps und Tricks'),
              onTap: () => {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TippsUndTricksPage()),
                      )
                    }
                  }),
          ListTile(
              leading: Icon(Icons.wb_cloudy_rounded),
              title: Text('Wissenswertes'),
              onTap: () => {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WissenswertesPage()),
                      )
                    }
                  }),
          ListTile(
              leading: Icon(Icons.phone_android),
              title: Text('Über die App'),
              onTap: () => {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UeberdieAppPage()),
                      )
                    }
                  }),
          ListTile(
              leading: Icon(Icons.border_color),
              title: Text('Traumtagebuch'),
              onTap: () => {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TagebuchPage()),
                      )
                    }
                  }),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

class _HomePageState extends State<HomePage> {
  String time;
  String date;

  // Europäische Standardzeit zurückgeben
  DateTime getCurrentEUTime() {
    DateTime utc_now = DateTime.now().toUtc();
    DateTime eu_now = utc_now.add(Duration(hours: 1));
    return eu_now;
  }

  void _onAlarmButtonPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AlleWeckerPage()),
    );
  }

  void _onAddButtonPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NeuerWeckerPage()),
    );
  }

  void _onSettingsButtonPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SettingsPage()),
    );
  }

  String generateTimeString() {
    if (RuntimeData.showTimeInSeconds) {
      return DateFormat('kk:mm:ss').format(getCurrentEUTime());
    } else {
      return DateFormat('kk:mm').format(getCurrentEUTime());
    }
  }

  String generateDateString() {
    return DateFormat('E. d. MMM').format(getCurrentEUTime());
  }

  void update() async {
    while (true) {
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
              // Menu Bar, Side Drawer aufrufen
              drawer: SideDrawer(),
              appBar: AppBar(
                backgroundColor: BACKGROUND_COLOR,
                title: Text('Willkommen zur Sleep-Better App'),
              ),
              body: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 100,
                      ),
                    ),
                    Text(
                      date,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 30),
                    ),
                    Container(
                      height: 32,
                    ),
                    /*Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Nächster Wecker",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontSize: 30),
                        )),*/
                    Container(
                      height: 32,
                    ),
                    //Image.asset('assets/images/WeckerLogo1.png'),
                    Expanded(
                        child: Image.asset('assets/images/WeckerLogo1.png')),
                    Container(
                      height: 60,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                            onPressed: _onAlarmButtonPressed,
                            shape: CircleBorder(
                                side:
                                    BorderSide(color: Colors.white, width: 2)),
                            child: Container(
                              padding: EdgeInsets.all(4),
                              child: Icon(
                                Icons.alarm,
                                color: Colors.white,
                                size: 45,
                              ),
                            )),
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
                        FlatButton(
                            onPressed: _onSettingsButtonPressed,
                            shape: CircleBorder(
                                side:
                                    BorderSide(color: Colors.white, width: 2)),
                            child: Container(
                              padding: EdgeInsets.all(4),
                              child: Icon(
                                Icons.settings,
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
              )),
        ));
  }
}
