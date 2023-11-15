import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF588DE7);

const List<Color> _colorTheme=
[
  _customColor,
  Color(0xFFFFFFFF),
  Color(0xFFE86257),
  Color(0xFFE8D35B),
  Color(0xFF000000),
];

class AppTheme{
  final int selectedThemeColor;
  AppTheme({
    this.selectedThemeColor = 0
  }):assert(selectedThemeColor >= 0 && selectedThemeColor < _colorTheme.length);

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectedThemeColor],
      appBarTheme: AppBarTheme(
          color: _colorTheme[selectedThemeColor],
      ),
      textTheme: const TextTheme(
        titleSmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: Colors.red,
          fontFamily: 'Roboto',
        ),
        bodyMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: Colors.pink,
          fontFamily: 'Roboto',
        ),
        bodyLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w400,
          color: Colors.green,
          fontFamily: 'Roboto',
        ),


      ),
    );
  }


}