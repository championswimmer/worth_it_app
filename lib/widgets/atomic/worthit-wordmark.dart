
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:worth_it_app/app-theme.dart';

class WorthItWordmark extends StatelessWidget {
  double? fontSize;
  WorthItWordmark(this.fontSize);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('worth ', style: WorthItTheme.getWordMarkTextStyle(Colors.blueGrey, fontSize: fontSize)),
        Text('it?', style: WorthItTheme.getWordMarkTextStyle(Colors.green, fontSize: fontSize)),
      ],
    );
  }

}