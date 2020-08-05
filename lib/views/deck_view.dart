//import 'package:flutter/material.dart';
//import './card_view.dart';
//import './draggable_card_view.dart';
//
//class DeckView extends StatefulWidget {
//  @override
//  _DeckViewState createState() => _DeckViewState();
//}
//
//class _DeckViewState extends State<DeckView> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.black,
//      body: Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: Stack(
//          children: [
//            DraggableCardView(AssetImage('assets/cards/' + 'back_of_card' + '.png')),
//            DraggableCardView(AssetImage('assets/cards/' + '1' + '.png')),
//            DraggableCardView(AssetImage('assets/cards/' + '2' + '.png')),
//            DraggableCardView(AssetImage('assets/cards/' + '3' + '.png')),
//            DraggableCardView(AssetImage('assets/cards/' + '5' + '.png')),
//            DraggableCardView(AssetImage('assets/cards/' + '7' + '.png')),
//            DraggableCardView(AssetImage('assets/cards/' + '8' + '.png')),
//          ],
//        ),
//      ),
//    );
//
//    return Scaffold(
//      backgroundColor: Colors.black,
//      body: Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: Column(
//          // Column is also a layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug painting" (press "p" in the console, choose the
//          // "Toggle Debug Paint" action from the Flutter Inspector in Android
//          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//          // to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Stack(
//              children: <Widget>[
//                CardView(cardImage: AssetImage('assets/cards/' + 'back_of_card' + '.png')),
//                DraggableCardView(AssetImage('assets/cards/' + '1' + '.png')),
//                DraggableCardView(AssetImage('assets/cards/' + '2' + '.png')),
//                DraggableCardView(AssetImage('assets/cards/' + '3' + '.png')),
//                DraggableCardView(AssetImage('assets/cards/' + '5' + '.png')),
//                DraggableCardView(AssetImage('assets/cards/' + '7' + '.png')),
//                DraggableCardView(AssetImage('assets/cards/' + '8' + '.png')),
//              ],
//            ),
//            Text(
//              '0 cards left until shuffle',
//              style: TextStyle(color: Colors.white, fontSize: 18),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
