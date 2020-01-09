import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String pathImage = 'assets/profile.jpeg';
  String name = 'Alan Brito Delgado';
  String details = '1 review * 5 Photos';
  String comment = 'Amazing place to live and study';

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: EdgeInsets.only(
        top: 30.0,
        left: 30.0,
      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        top: 30.0,
        left: 30.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontFamily: 'Lato',
        ),
        ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 30.0,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: 'Lato',
          color: Color(0xFFa3a5a7),
        ),
        ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 30.0,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w800,
        ),
        ),
    );


    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment,
      ],
    );

    final reviewItem = Row(
      children: <Widget>[
        photo,
        userDetails,
      ],
    );

    return reviewItem;
  }
}
