import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lazy_sorry_flutter/viewModels/lazy_sorry_view_model.dart';
import 'package:lazy_sorry_flutter/views/top_card_view.dart';
import 'deck_view.dart';
import 'draggable_card_view.dart';

class MainView extends StatefulWidget {
  Map<String, AssetImage> cardImageMap = {
    '1': AssetImage('assets/cards/' + '1' + '.png'),
    '2': AssetImage('assets/cards/' + '2' + '.png'),
    '3': AssetImage('assets/cards/' + '3' + '.png'),
    '4': AssetImage('assets/cards/' + '4' + '.png'),
    '5': AssetImage('assets/cards/' + '5' + '.png'),
    '7': AssetImage('assets/cards/' + '7' + '.png'),
    '8': AssetImage('assets/cards/' + '8' + '.png'),
    '10': AssetImage('assets/cards/' + '10' + '.png'),
    '11': AssetImage('assets/cards/' + '11' + '.png'),
    '12': AssetImage('assets/cards/' + '12' + '.png'),
    'back_of_card': AssetImage('assets/cards/' + 'back_of_card' + '.png'),
    'sorry': AssetImage('assets/cards/' + 'sorry' + '.png'),
  };

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  LazySorryViewModel _lsvm = LazySorryViewModel();

  AutoSizeText cardsLeftText() {
    // https://pub.dev/packages/auto_size_text
    return AutoSizeText(
      _lsvm.deck.numPlayingCardsLeft().toString() + ' cards left until shuffle',
      style: TextStyle(color: Colors.white, fontSize: 24),
      maxLines: 1,
    );
  }

  AssetImage getCard(String card) {
    return widget.cardImageMap[card];
    return AssetImage('assets/cards/' + card + '.png');
  }

  List<Widget> cardStack() {
    List<Widget> cards = _lsvm.drawnCards.map((card) => Container(child: DraggableCardView(getCard(card)))).toList();

    bool Function() callback = () {
      setState(() {});
      return _lsvm.drawCardTrigger();
    };

    Widget topCard = Container(
      child: TopCardView(getCard(_lsvm.topCard), callback)
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
