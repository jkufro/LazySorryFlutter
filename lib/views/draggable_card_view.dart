import 'package:flutter/material.dart';
import 'card_view.dart';
import 'draggable_card.dart';

//https://flutter.dev/docs/cookbook/animation/physics-simulation#interactive-example
//https://flutter.dev/docs/cookbook/animation/physics-simulation#interactive-example
//https://flutter.dev/docs/cookbook/animation/physics-simulation#interactive-example
//https://flutter.dev/docs/cookbook/animation/physics-simulation#interactive-example

class DraggableCardView extends StatelessWidget {
  final AssetImage cardImage;

  DraggableCardView(this.cardImage);

  @override
  Widget build(BuildContext context) {
    return DraggableCard(
      child: CardView(cardImage: cardImage),
    );
  }
}
