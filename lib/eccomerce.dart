import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'pages/SplashScreen.dart';

// ignore: camel_case_types, use_key_in_widget_constructors
class ecommerceApp extends StatelessWidget {
  @override

  //every statleless NEEDS build widget
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build

    //MaterialApp is the matertial design system of the program
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //the homepage of the program (first page appears)
      // ignore: prefer_const_constructors

      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      home: SplashScreen(),
    );
  }
}
