import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';


class LoadingScreen extends StatefulWidget {
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getTime()async{
    Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/Europe/London')) ;

    Map data = jsonDecode(response.body);
    //print(data) ;
    //get properties from data
    String datetime =data['datetime'];
    String offset= data['offset'].substring(1,3) ;
    print(datetime);
    print(offset);


    //create datetime object 
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
  }
  @override
  void initState() {
    super.initState();
    getTime() ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Text('loading screen')
      )

    );
  }
}