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
    return Draggable(
      data: 'back_of_card',
      child: CardView(cardImage: cardImage),
      childWhenDragging: Container(),
      feedback: CardView(cardImage: cardImage),
    );
  }
}



//class DraggableCardView extends StatefulWidget {
//  final AssetImage cardImage;
//
//  DraggableCardView(this.cardImage);
////    _cardImage = AssetImage('assets/cards/' + this.card + '.png');
//
//  @override
//  _DraggableCardViewState createState() => _DraggableCardViewState();
//}
//
//class _DraggableCardViewState extends State<DraggableCardView> {
//  Offset _position;
//  AssetImage _cardImage;
//
//  @override
//  void initState() {
//    _position = Offset(0.0, 0.0);
//    _cardImage = widget.cardImage;
//    super.initState();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Draggable(
//      data: 'back_of_card',
//      child: CardView(cardImage: _cardImage),
//      childWhenDragging: Container(),
//      feedback: CardView(cardImage: _cardImage),
//    );
//  }
//}
