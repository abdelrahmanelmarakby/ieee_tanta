import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
      primaryColor: Colors.indigo,
      accentColor: Colors.indigo,
      textTheme: TextTheme(
          headline1: GoogleFonts.cairo(),
          bodyText1: GoogleFonts.cairo(),
          bodyText2: GoogleFonts.cairo(color: Colors.indigo),
          overline: GoogleFonts.cairo(color: Colors.indigo),
          subtitle1: GoogleFonts.cairo(color: Colors.indigo),
          subtitle2: GoogleFonts.cairo(color: Colors.indigo),
          caption: GoogleFonts.cairo(color: Colors.indigo),
          button: GoogleFonts.cairo(color: Colors.indigo),
          headline2: GoogleFonts.cairo(color: Colors.indigo),
          headline3: GoogleFonts.cairo(color: Colors.indigo),
          headline4: GoogleFonts.cairo(color: Colors.indigo),
          headline5: GoogleFonts.cairo(color: Colors.indigo),
          headline6: GoogleFonts.cairo(color: Colors.indigo)));
  static final dark = ThemeData.dark().copyWith(
      //scaffoldBackgroundColor: Color(0xff23f788),

      //buttonColor: Colors.blue,
      primaryColor: Colors.indigo,
      accentColor: Colors.indigo,
      textTheme: TextTheme(
          headline1: GoogleFonts.cairo(),
          bodyText1: GoogleFonts.cairo(),
          bodyText2: GoogleFonts.cairo(),
          overline: GoogleFonts.cairo(),
          subtitle1: GoogleFonts.cairo(),
          subtitle2: GoogleFonts.cairo(),
          caption: GoogleFonts.cairo(),
          button: GoogleFonts.cairo(),
          headline2: GoogleFonts.cairo(),
          headline3: GoogleFonts.cairo(),
          headline4: GoogleFonts.cairo(),
          headline5: GoogleFonts.cairo(),
          headline6: GoogleFonts.cairo()));
}

class ThemeService {
  var _box = GetStorage();
  var _key = 'isDarkMode';

  ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  bool _loadThemeFromBox() => _box.read(_key) ?? false;
  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

  void switchTheme() {
    print("clicked");
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_loadThemeFromBox());
  }
}
