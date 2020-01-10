import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CustomFloatingActionButton();
  }
}

class _CustomFloatingActionButton extends State<CustomFloatingActionButton> {

  void onPressedFav() {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('Agregaste a Fav'),
      )
    );
    
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: 'Fav',
      child: Icon(Icons.favorite_border),
      onPressed: onPressedFav,
    );
  }
  
}
