import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/home/ahadeth/item_hadeth_name.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> myAhadeth=[];

  @override
  Widget build(BuildContext context) {
    if(myAhadeth.isEmpty)
    readHadethfile();

    return Container(
      child:Column(
        children: [
          Center(child: Image.asset('assets/images/hadeth_header.png'),),
          Divider(color: Theme.of(context).primaryColor,thickness: 3,),
          Text('Ahadeth',style: Theme.of(context).textTheme.subtitle1,),
          Divider(color: Theme.of(context).primaryColor,thickness: 3,),
          Expanded(child: ListView.separated(
              itemBuilder: (context,index){
                return ItemHadethName(myAhadeth[index]);
              },
              separatorBuilder: (context,index){
                return Container(
                  height: 2,
                  color: Theme.of(context).primaryColor,
                  margin: EdgeInsets.symmetric(horizontal: 50,),
                );
              },
              itemCount: myAhadeth.length),),
        ],
      ),
    );
  }

  void readHadethfile() async{
    String hadethContent= await rootBundle.loadString('assets/files/ahadeth.txt'); //34an a2ra al file kolo
    List<String> ahadeth=hadethContent.trim().split('#\r\n'); //asmt al file kolo kol hadeth lwahdo

    for(int i=0;i<ahadeth.length;i++){ //3mlt loop 3an y3dy 3l file kolo msh awl hadeth bs
      String allhadeth=ahadeth[i];
      if(allhadeth.isEmpty)continue;
      allhadeth.trim();
      List<String>lines=allhadeth.split('\n');
      String title=lines[0]; //34an ageb title
      lines.removeAt(0); //b3d mashelt al title atb2a al content
      Hadeth content=Hadeth(title,lines);
      myAhadeth.add(content); //azwd fl list aly 3mltha al content nfso
    }
    setState(() {

    });
}
}

class Hadeth {
  String title;
  List<String>content;
  Hadeth(this.title,this.content);
}
