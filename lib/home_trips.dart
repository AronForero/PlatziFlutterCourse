import 'package:flutter/material.dart';
import 'package:platzi_trips_app/description_place.dart';
import 'package:platzi_trips_app/header_appbar.dart';
import 'package:platzi_trips_app/review_list.dart';

class HomeTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String description = "Really Good place to live, but not to get fun :D. \nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s";
    return Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace('Bucaramanga', 3.5, description),
                ReviewList(),
              ],
            ),
            HeaderAppBar(),
          ],
        );
  }
}
