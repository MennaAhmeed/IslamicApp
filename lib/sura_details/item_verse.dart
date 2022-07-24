import 'package:flutter/material.dart';
import 'package:islamic_app/sura_details/sura_details.dart';

class ItemVerse extends StatelessWidget {
String text;

ItemVerse(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      margin: EdgeInsets.all(12),
      child:Text(text,
      textAlign: TextAlign.center,
      style:Theme.of(context).textTheme.subtitle1),
    );
  }
}
