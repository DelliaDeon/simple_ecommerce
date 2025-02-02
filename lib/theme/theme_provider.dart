import 'package:flutter/material.dart';
import 'package:simple_ecommerce_app/theme/theme.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  // Boolean property to check if the current theme is dark
  bool get isDarkMode => _themeData.brightness == Brightness.dark;

  set themeData(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }

  changeTheme(){
    if(themeData == lightMode){
      themeData = darkMode;
    }else{
      themeData = lightMode;
    }
  }

}