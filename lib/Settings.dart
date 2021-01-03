import 'package:shared_preferences/shared_preferences.dart';

class Settings {

  static bool showTimeInSeconds = false;
  static String showTimeInSecondsKey = "ShowTimeInSeconds";

  // Einstellungen speichern
  static Future safe()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(showTimeInSecondsKey, showTimeInSeconds);
  }
  // Laden der Einstellungen
  static Future load()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    showTimeInSeconds = prefs.getBool(showTimeInSecondsKey);
    showTimeInSeconds ??= false;
  }



}