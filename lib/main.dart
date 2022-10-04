import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();

  // var defaultColor = Colors.grey;
  var primaryColor = const Color(0xFF2B37A5);
  var secondaryColor = const Color(0xFFEC9B3B);
  //var tertiaryColor = const Color(0xFFFFCCB3);
  var errorColor = Colors.red.shade900;

  ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: primaryColor, // focus
        onPrimary: Colors.white,
        background: primaryColor,
        onBackground: Colors.white,
        secondary: secondaryColor, //float action button
        onSecondary: Colors.white,
        error: errorColor,
        onError: Colors.white,
        surface: primaryColor, // AppBar
        onSurface: secondaryColor //icons, inputs
        ),

    // brightness: Brightness.dark,
    // primaryColor: primaryColor,
    //errorColor: errorColor,

    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(),
    ),
    listTileTheme: ListTileThemeData(
      textColor: primaryColor,
      iconColor: primaryColor,
    ),
  );

  // ThemeData lightTheme = ThemeData(
  //   brightness: Brightness.light,
  //   primaryColor: Colors.blue,
  //   buttonTheme: const ButtonThemeData(
  //     buttonColor: Colors.blue,
  //     disabledColor: Colors.grey,
  //   ),
  // );

  runApp(
    GetMaterialApp(
      title: "Application",
      //theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      // theme: ThemeData(
      //   // Define the default brightness and colors.
      //   colorScheme: ColorScheme.fromSwatch().copyWith(
      //     primary: Colors.blue.shade800,
      //     secondary: Colors.green,
      //   ),
      //   primaryColor: Colors.white,
      //   backgroundColor: Colors.green,
      //   buttonTheme: const ButtonThemeData(
      //     buttonColor: Colors.blueAccent,
      //     shape: RoundedRectangleBorder(),
      //     textTheme: ButtonTextTheme.accent,
      //   ),

      //   // Define the default `TextTheme`. Use this to specify the default
      //   // text styling for headlines, titles, bodies of text, and more.
      //   appBarTheme: const AppBarTheme(
      //     backgroundColor: Colors.white,
      //     foregroundColor: Colors.black54,
      //     elevation: 1,
      //     iconTheme: IconThemeData(color: Colors.orange),
      //   ),
      // ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
