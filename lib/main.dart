import 'package:flutter/material.dart';
import 'package:platzi_trips_app/gradient_back.dart';
import 'package:platzi_trips_app/review_list.dart';
import 'description_place.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String description = "Really Good place to live, but not to get fun :D. \nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s";
    return MaterialApp(
      title: 'Reto 2 Platzi Flutter Course',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace('Bucaramanga', 3.5, description),
                ReviewList(),
              ],
            ),
            GradientBack('Popular'),

          ],
        ),
      ) 
    );
  }
}
