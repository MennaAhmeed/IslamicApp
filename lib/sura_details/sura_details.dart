import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/sura_details/item_verse.dart';

class SuraDetailsScreen extends StatefulWidget {
static const routeName='suradetails';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {

List<String> verses=[];
  @override
  Widget build(BuildContext context) {

    var args=ModalRoute.of(context)?.settings.arguments as suraDetailsArgs;
    if(verses.isEmpty) //34an my3mlsh loop llprint fl log
    loadFile(args.index);

    return Stack(
      children: [
      Image.asset('assets/images/bg.png',
      width: double.infinity,
      fit: BoxFit.cover,),
    Scaffold(
    appBar: AppBar(
    title: Center(
    child: Text(args.name,
    style: Theme.of(context).textTheme.headline1,),),
    ),
      body:
      verses.length==0 ? Center(child: CircularProgressIndicator()) : ListView.separated(
        separatorBuilder: (context,index){
          return Container(
            height: 1,
            color: Theme.of(context).primaryColor,
            margin: EdgeInsets.symmetric(horizontal: 50),
          );
      },
        itemBuilder: (context,index){
        return ItemVerse(verses[index]);
      },
      itemCount: verses.length,
      ),
    ),
      ],
    );
}

void loadFile(int index)async {
    String content= await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String>lines= content.trim().split("\n");
    verses=lines;
    setState(() {

    });
}
}
class suraDetailsArgs{
  String name;
  int index;
  suraDetailsArgs(this.name,this.index);

}
