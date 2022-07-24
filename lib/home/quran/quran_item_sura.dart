import 'package:flutter/material.dart';
import 'package:islamic_app/sura_details/sura_details.dart';

class ItemSuraName extends StatelessWidget {
String name;
int index;
ItemSuraName(this.name,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
        arguments:suraDetailsArgs(name, index),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.0),
        child:Text(name,
        textAlign: TextAlign.center,
        style:Theme.of(context).textTheme.subtitle1),
      ),
    );
  }
}
