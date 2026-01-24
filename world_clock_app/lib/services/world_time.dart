import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
class World_time {
  String location ; //name for the ui
   String time = 'loding' ; // the time in that location 
  String flag ; // url to an asset flag icon 
  String url ; // location url for api end point 
  World_time({required this.location , required this.flag , required this.url});

  Future <void> getTime()async{
    try{
       Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url')) ;
 
    Map data = jsonDecode(response.body);
    //print(data) ;
    //get properties from data
    String datetime =data['datetime'];
    String offset= data['utc_offset'].substring(1,3) ;
    print(datetime);
    print(offset);


    //create datetime object 
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    //set the time 
    time = DateFormat.jm().format(now).toString();
  }
  catch (e){
    print('cought the error : $e');
    // time = 'could not fetch the time ' ;
  }
    }
   
}