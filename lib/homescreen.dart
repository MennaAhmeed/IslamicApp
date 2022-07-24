import 'package:flutter/material.dart';
import 'package:islamic_app/home/ahadeth/hadeth_tab.dart';
import 'package:islamic_app/home/quran/quran_tab.dart';
import 'package:islamic_app/home/radio_tab.dart';
import 'package:islamic_app/home/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/bg.png',
          width: double.infinity,
          fit: BoxFit.cover,),
        Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Islamii',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          bottomNavigationBar: Theme(
            data:Theme.of(context).copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex:currentindex,
              onTap: (index)
              {
                currentindex=index;
                setState(() {

                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_quran.png'),),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png'),),
                    label: 'Hadeth'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_sebha.png'),),
                    label: 'Sebha'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_radio.png'),),
                    label: 'Radio'),
              ],
            ),
          ),
          body: tabs[currentindex],
        ),
      ],
    );
  }
  List<Widget> tabs=[
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
  ];
}