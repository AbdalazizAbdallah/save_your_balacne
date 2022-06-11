import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_colors.dart';

class MyTheme {
  static ThemeData lightDate = ThemeData(
      primaryColor: MyColor.myBlack,
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: Border(
            bottom: BorderSide(
          style: BorderStyle.solid,
          color: Colors.grey.shade300,
          width: 1,
        )),
        toolbarHeight: 80,
      ),
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
        headline4: GoogleFonts.questrial(
            color: Colors.black, fontWeight: FontWeight.bold),
        headline6: GoogleFonts.questrial(
          color: Colors.black26,
          fontSize: 14,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: MyColor.myBlack,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: MyColor.myBlack,
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
        ),
        labelStyle: TextStyle(
          color: MyColor.myBlack,
          fontSize: 14,
        ),
        prefixIconColor: MyColor.myBlack,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          primary: MyColor.myBlack,
          padding: const EdgeInsets.all(15),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(double.infinity, 60),
          primary: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ));
}
