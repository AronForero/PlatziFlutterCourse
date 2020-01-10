import 'package:flutter/material.dart';
import 'package:platzi_trips_app/custom_floating_action_button.dart';

class CardImage extends StatelessWidget {

  String pathImage = 'assets/stars.jpg';

  CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350.0,
      width: 250.0,
      margin: EdgeInsets.only(
        top: 80.0,
        left: 20.0,
        bottom: 20.0,
      ),

      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(pathImage),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 50.0,
            offset: Offset(0.0, 7.0),
          )
        ]
      ),
    );

    final final_card = Stack(
      alignment: Alignment(0.95, 1.0),
      children: <Widget>[
        card,
        CustomFloatingActionButton(),
      ],
    );
    
    return final_card;
  }
}
