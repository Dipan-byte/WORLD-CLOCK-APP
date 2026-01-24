import 'package:flutter/material.dart';
import 'package:world_clock_app/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingScreen extends StatefulWidget {
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  String showing = 'loading' ;
  void setupWorldTime() async{
     World_time instance =World_time(location: 'Berlin', flag: 'flag.png', url: 'Europe/Berlin');
     await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home' , arguments: {
      'location' : instance.location ,
      'flag':instance.flag ,
      'time':instance.time ,
      'isDaytime': instance.isDaytime ,
    });
  }
  @override
  void initState() {
    super.initState();
    setupWorldTime() ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
       body: Center(
        
        child: SpinKitRotatingCircle(
                color: Colors.white,
                size: 50.0,
              ),
       )

    );
  }
}