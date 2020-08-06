import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final AssetImage cardImage;

  const CardView({Key key, this.cardImage}): super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 20;
    return Image(
      image: cardImage,
      width: width,
    );
  }
}
