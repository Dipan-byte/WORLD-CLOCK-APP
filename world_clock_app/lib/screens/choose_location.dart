import 'package:flutter/material.dart';
import 'package:world_clock_app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<World_time> locations = [
    World_time(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    World_time(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    World_time(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    World_time(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    World_time(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    World_time(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    World_time(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    World_time(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title:  Text('CHOOSE LOCATION') ,

      ),
       body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context , index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0 , horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: (){
                  
                } ,
                  title: Text(locations[index].location),
                  leading : CircleAvatar(
                    backgroundImage: AssetImage('assets/${locations[index].flag}')
                    ),
                
              ),
            ),
          );
        }
       )

    );
  }
}