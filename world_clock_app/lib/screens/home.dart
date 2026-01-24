
import 'package:flutter/material.dart' ;

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState() ;
}

class _HomeState extends State<Home> {
  Map data ={} ;
    @override
    void didChangeDependencies() {
    super.didChangeDependencies();

    final route = ModalRoute.of(context);
    if (route != null) {
      data = route.settings.arguments as Map;
       print(data);
    }
  }
  
  @override
  Widget build(BuildContext context){
    String bgImage = data['isDayTime'] ? 'day.jpeg' : 'night.jpg' ;
    return Scaffold(
      body : Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/$bgImage') ,
            fit: BoxFit.cover 
            )
        ),
        child: Padding(
          padding: EdgeInsetsGeometry.fromLTRB(30.0, 120.0, 30.0, 0.0),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                ElevatedButton.icon(
                  onPressed : () {
                    Navigator.pushNamed(context, '/location') ;
                  } ,
                  icon: Icon(Icons.edit_location) ,
                  label: Text('edit location')
                ),
                Row(
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 30.0 ,
                                          ),
                    ),
        
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  data['time'] ,
                  style: TextStyle(
                        fontSize: 30.0 ,
                                          ),
                )
              ],
            )
          ),
        ),
      ) ,
    ) ;
  }
}