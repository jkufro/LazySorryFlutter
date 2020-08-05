import 'package:flutter/material.dart';
import 'package:lazy_sorry_flutter/viewModels/lazy_sorry_view_model.dart';
import 'deck_view.dart';
import 'draggable_card_view.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  LazySorryViewModel _lsvm;

  List<Widget> cardStack() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Stack(
              children: [
                DraggableCardView(AssetImage('assets/cards/' + 'back_of_card' + '.png')),
                DraggableCardView(AssetImage('assets/cards/' + '1' + '.png')),
                DraggableCardView(AssetImage('assets/cards/' + '2' + '.png')),
                DraggableCardView(AssetImage('assets/cards/' + '3' + '.png')),
                DraggableCardView(AssetImage('assets/cards/' + '5' + '.png')),
                DraggableCardView(AssetImage('assets/cards/' + '7' + '.png')),
                DraggableCardView(AssetImage('assets/cards/' + '8' + '.png')),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                '0 cards left until shuffle',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            )
          )
        ],
      )
    );
  }
}
