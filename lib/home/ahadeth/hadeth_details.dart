import 'package:flutter/material.dart';
import 'package:islamic_app/home/ahadeth/hadeth_tab.dart';
import 'package:islamic_app/sura_details/item_verse.dart';

class HadethDetails extends StatelessWidget {
static const routeName='hadethdetails';
List<String> verses=[];
  @override
  Widget build(BuildContext context) {
    Hadeth hadeth=ModalRoute.of(context)?.settings.arguments as Hadeth;
    verses=hadeth.content;
    return Stack(
      children: [
      Image.asset('assets/images/bg.png',
      width: double.infinity,
      fit: BoxFit.cover,),
    Scaffold(
    appBar: AppBar(
    title: Center(
    child: Text(hadeth.title,
    style: Theme.of(context).textTheme.headline1,
    ),
    ),
    ),
      body:
      verses.length==0 ? Center(child: CircularProgressIndicator()) : ListView.builder(
        // separatorBuilder: (context,index){
        //   return Container(
        //     height: 1,
        //     color: Theme.of(context).primaryColor,
        //     margin: EdgeInsets.symmetric(horizontal: 50),
        //   );
        // },
        itemBuilder: (context,index){
          return ItemVerse(verses[index]);
        },
        itemCount: verses.length,
      ),),
    ],
    );
  }
}
