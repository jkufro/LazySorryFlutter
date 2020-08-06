import 'package:flutter/material.dart';
import 'package:lazy_sorry_flutter/viewModels/lazy_sorry_view_model.dart';
import 'deck_view.dart';
import 'draggable_card_view.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  LazySorryViewModel _lsvm = LazySorryViewModel();

  Text cardsLeftText() {
    return Text(
      _lsvm.deck.numPlayingCardsLeft().toString() + ' cards left until shuffle',
      style: TextStyle(color: Colors.white, fontSize: 24),
    );
  }

  AssetImage getCard(String card) {
    return AssetImage('assets/cards/' + card + '.png');
  }

  List<Widget> cardStack() {
    List<Widget> cards = _lsvm.drawnCards.map((card) => Container(child: DraggableCardView(getCard(card)))).toList();
    Widget topCard = Container(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _lsvm.drawCardTrigger();
          });
        },
        child: DraggableCardView(getCard(_lsvm.topCard))
      ),
    );
    cards.add(topCard);
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Stack(
              children: cardStack(),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: cardsLeftText(),
            )
          )
        ],
      )
    );
  }
}
