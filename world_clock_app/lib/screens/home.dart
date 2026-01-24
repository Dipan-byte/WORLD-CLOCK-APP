
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
    return Scaffold(
      body : Center(
        child: ElevatedButton.icon(
          onPressed : () {
            Navigator.pushNamed(context, '/location') ;
          } ,
          icon: Icon(Icons.edit_location) ,
          label: Text('edit location')
        ),
      ) ,
    ) ;
  }
}