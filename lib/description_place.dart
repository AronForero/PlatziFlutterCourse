import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review_list.dart';

class DescriptionPlace extends StatelessWidget {

  String placeContent;
  double stars;
  String descriptionContent;

  DescriptionPlace(this.placeContent, this.stars, this.descriptionContent);

  @override
  Widget build(BuildContext context) {

    // final descriptionContent = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
    // String placeContent = 'Bucaramanga';
    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        ),
    );

    final star_half = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
        ),
    );

    final star_empty = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
        ),
    );

    final description = Container(
      margin: EdgeInsets.only(
        top: 30.0,
        right: 30.0,
        left: 30.0,
      ),
      child: Text(
        descriptionContent,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w300,
          fontFamily: 'Lato',
        ),
        textAlign: TextAlign.left,
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 30.0,
            right: 30.0
          ),
          child: Text(
            placeContent,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
              fontFamily: 'Lato',
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star_half,
            star_empty,
          ],
        ),
      ]
    );


    final body = Column(
      children: <Widget>[
        title_stars,
        description,
        ReviewList()
      ],
    );

    return body;
  }
}
