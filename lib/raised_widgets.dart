library raised_widgets;

import 'package:flutter/material.dart';

class RaisedWidgetStyle {
  final Color topColor;
  final Color backColor;
  final BorderRadius borderRadius;
  final double distance;
  const RaisedWidgetStyle({
    this.topColor = const Color(0xFF45484c),
    this.backColor = const Color(0xFF191a1c),
    this.borderRadius = const BorderRadius.all(Radius.circular(7.0)),
    this.distance = 15.0,
  });
}

class RaisedWidget extends StatelessWidget {
  final Widget child;
  final RaisedWidgetStyle style;

  RaisedWidget({@required this.child, this.style});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: <Widget>[
        DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
              borderRadius: style.borderRadius,
              boxShadow: [BoxShadow(color: style.backColor)]),
          child: Container(),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: style.distance,
          ),
          child: DecoratedBox(
            position: DecorationPosition.background,
            decoration: BoxDecoration(
                borderRadius: style.borderRadius,
                boxShadow: [BoxShadow(color: style.topColor)]),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.zero,
              alignment: Alignment.center,
              child: child,
            ),
          ),
        ),
      ],
    );
  }
}
