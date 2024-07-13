import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone_app/core/configs/theme/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
     primaryColor: AppColors.primary,
     scaffoldBackgroundColor: AppColors.lightBackground,
     brightness: Brightness.light,
     fontFamily: 'K2D',
     inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        color: Color(0xff383838),
      ),
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: const EdgeInsets.all(20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide:const BorderSide(
            color: Colors.black,
            width: 0.4,
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide:const BorderSide(
            color: Colors.black,
            width: 0.4,
          )
        ),
      ),
     elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        )
      ),
     ),
  );

  static final darkTheme = ThemeData(
     primaryColor: AppColors.primary,
     scaffoldBackgroundColor: AppColors.darkBackground,
     brightness: Brightness.dark,
     fontFamily: 'K2D',
     inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        color: Color(0xffA7A7A7),
      ),
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: const EdgeInsets.all(20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide:const BorderSide(
            color: Colors.white,
            width: 0.4,
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide:const BorderSide(
            color: Colors.white,
            width: 0.4,
          )
        ),
      ),
     elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        )
      ),
     ),
  );  
}
