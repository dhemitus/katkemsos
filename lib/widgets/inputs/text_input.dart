import 'package:flutter/material.dart';

import 'package:flutter_katkemsos/style/style.dart';

class TextInput extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final Widget suffixIcon;
  final bool password;
  final int maxLines;

  TextInput({Key key, this.labelText, this.controller, this.suffixIcon, this.password = false, this.maxLines}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: Style.body1.copyWith(color: Style.darkindigo),
      obscureText: password,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: Style.body1.copyWith(color: Style.cloudyblue),
        suffixIcon: suffixIcon,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Style.cloudyblue,
          )
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Style.darkindigo,
            width: 2.0
          )
        )
      ),
    );
  }
}