import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Todos los componentes visuales = widget
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Quita o pone letrero debug diagonal 
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi primer proyecto',
              style: TextStyle(
                color: Colors.lime[100],
                fontSize: 25.0,
              )
          ),
          elevation: 10.0,
          backgroundColor: Colors.purple,
          toolbarOpacity: 1.0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              size: 40.0,
            ),
            splashColor: Colors.yellow,
            onPressed: () {
              print('Click button menu');
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add, size: 35.0),
              onPressed: () {
                print('click add');
              },
            ),
            IconButton(
              icon: Icon(Icons.add_alarm, size: 35.0),
              onPressed: () {
                print('click add alarm');
              },
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              colors: [Color.fromARGB(195, 248, 39, 185), Color.fromARGB(255, 250, 64, 37)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.adb, size: 120.0, color: Colors.blueAccent,),
              )
            ],
          ),
        ),
      ),
    );    
  }
}
