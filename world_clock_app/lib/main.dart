import 'package:flutter/material.dart';
import 'package:world_clock_app/screens/home.dart';
import 'package:world_clock_app/screens/loading_screen.dart';
import 'package:world_clock_app/screens/choose_location.dart';



void main() {
  runApp(MaterialApp(
  
    routes: {
      '/' : (context) => LoadingScreen() ,
      '/home' : (context) => Home() ,
      '/location': (context) => ChooseLocation() 
    },
  ));
}

