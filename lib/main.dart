import 'package:flutter/material.dart';
import 'package:platzi_trips_app/platzi_trips.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Platzi Flutter Course App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PlatziTrips()
    );
  }
}
