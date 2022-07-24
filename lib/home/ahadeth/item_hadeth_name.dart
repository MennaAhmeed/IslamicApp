import 'package:flutter/material.dart';
import 'package:islamic_app/home/ahadeth/hadeth_details.dart';
import 'package:islamic_app/home/ahadeth/hadeth_tab.dart';

class ItemHadethName extends StatelessWidget {
 Hadeth hadeth;
 ItemHadethName(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadethDetails.routeName,
          arguments:hadeth,
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.0),
        child:Text(hadeth.title,
            textAlign: TextAlign.center,
            style:Theme.of(context).textTheme.subtitle1),
      ),
    );
  }
}
