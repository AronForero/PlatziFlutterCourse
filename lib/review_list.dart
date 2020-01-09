import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review('assets/profile.jpeg', 'Alan Brito', '1 review * 5 photos', 'Comment of the review'),
        Review('assets/profile.jpeg', 'Alan Brito', '1 review * 5 photos', 'Comment of the review'),
        Review('assets/profile.jpeg', 'Alan Brito', '1 review * 5 photos', 'Comment of the review'),
      ],
    );
  }
}
