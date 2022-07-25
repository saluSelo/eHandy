import 'package:firstapp/init_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'eccomerce.dart';

//to add images to your project.. make assets folder.. add images to it..
//then go to pubspec.yaml and remove the comment on assets... right down the path of the images
//refresh your project

void main(List<String> args) {
  //main function includes the runApp
  initializeApp.init_app();
  //runApp runs the main class/widget of the program
  runApp(ProviderScope(child: ecommerceApp()));
}
