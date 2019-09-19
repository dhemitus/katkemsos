import 'package:flutter/material.dart';

import 'package:flutter_katkemsos/style/style.dart';

class PrimaryButton extends StatelessWidget {

  final String label;
  final Function onPressed;

  PrimaryButton({Key key, this.label, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(context),
      child: Container(
        alignment: Alignment.center,
        child: Text(label, style: Style.subTitle1,),
        height: 50.0,
        decoration: BoxDecoration(
          color: Style.green,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(4.0),
          boxShadow: <BoxShadow> [
            new BoxShadow(
                color: Style.green,
                blurRadius: 03.0,
                offset: new Offset(0.0, 05.0)
            )
          ]
        ),
      ),
    );
  }
}
