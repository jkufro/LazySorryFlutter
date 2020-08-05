import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final AssetImage cardImage;

  const CardView({Key key, this.cardImage}): super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 50;
    double height = width  * (2100 / 1500);
    return Image(
      image: cardImage,
      width: width,
//      height: height,
    );
    return Padding(
      padding: EdgeInsets.all(20),
      child: Image(
        image: cardImage,
        width: MediaQuery.of(context).size.width - 50,
        height: MediaQuery.of(context).size.height - 50,
      ),
    );
  }
}
