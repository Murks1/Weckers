import 'package:shared_preferences/shared_preferences.dart';
import 'wecker.dart';

class RuntimeData {

  static bool showTimeInSeconds = false;
  static String showTimeInSecondsKey = "ShowTimeInSeconds";

  static List<Wecker> weckerListe = new List<Wecker>();
  static String weckerListeKey = "weckerListe";


  // Einstellungen speichern
  static Future safe() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String> weckerStringList = [];
    for(Wecker wecker in weckerListe){
      weckerStringList.add(wecker.toString());
    }

    await prefs.setStringList(weckerListeKey, weckerStringList);
    await prefs.setBool(showTimeInSecondsKey, showTimeInSeconds);
  }

  // Laden der Einstellungen
  static Future load() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    weckerListe = [];
    List<String> weckerStringList = prefs.getStringList(weckerListeKey);
    weckerStringList ??= [];

    for(String weckerString in weckerStringList){
      weckerListe.add(Wecker.fromString(weckerString));
    }

    showTimeInSeconds = prefs.getBool(showTimeInSecondsKey);
    showTimeInSeconds ??= false;
  }
}
