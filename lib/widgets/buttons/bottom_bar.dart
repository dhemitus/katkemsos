import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final Color color;

  BottomBar({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 146.0,
        height: 4.0,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(2.0),
        ),
      ),
    );
  }

}