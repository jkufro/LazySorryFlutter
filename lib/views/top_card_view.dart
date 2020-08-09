import 'dart:math';

import 'package:flutter/material.dart';
import 'draggable_card_view.dart';


class TopCardView extends StatefulWidget {
  final AssetImage cardImage;
  final bool Function() _onTap;

  // https://stackoverflow.com/questions/50625777/how-to-pass-callback-in-flutter
  TopCardView(this.cardImage, this._onTap);

  @override
  _TopCardState createState() => _TopCardState();
}

class _TopCardState extends State<TopCardView> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation _angleAnimation;
  Animation _positionAnimation;
  final Duration duration = Duration(milliseconds: 500);
  final double startAngle = pi / 2;
  final double endAngle = 0;
  final double startOffset = -1000;
  final double endOffset = 0;


  @override
  void initState() {
    super.initState();

    _controller = new AnimationController(duration: duration, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    _angleAnimation = Tween(begin: startAngle, end: endAngle).animate(_controller);
    _positionAnimation = Tween(begin: startOffset, end: endOffset).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            if (widget._onTap()) {
              _controller.reset();
              _controller.forward();
            }
          });
        },
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(
              duration: duration,
              child: Transform(
                origin: Offset(0, _positionAnimation.value),
                transform: Matrix4.identity()..setEntry(3, 2, -0.0005)..rotateX(_angleAnimation.value),
                alignment: Alignment.center,
                child: DraggableCardView(widget.cardImage),
              ),
            )
          ],
        )
    );
  }
}

