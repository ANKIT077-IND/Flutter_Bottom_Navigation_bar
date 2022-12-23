import 'package:bottom_navigation_baar/Home_page.dart';
import 'package:bottom_navigation_baar/Profilepage.dart';
import 'package:bottom_navigation_baar/Setting%20Page.dart';
import 'package:bottom_navigation_baar/buypage.dart';
import 'package:bottom_navigation_baar/helppage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int _currentIndex=0;
   final screenList=[
     Homepage(),
     Buy(),
     Setting(),
     Help(),
     Profile(),
   ];


  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: const Text("Bottom Navigation bar"),

        ),
        body:IndexedStack(
          children:screenList,
          index: _currentIndex,
        ),
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          backgroundColor: Colors.black
        ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Buy",
              backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Setting",
              backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: "Help",
              backgroundColor: Colors.black
          ),BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
              backgroundColor: Colors.black
          ),
        ],
       onTap: (index){
          setState(() {
            _currentIndex=index;
          });
       },
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
      ),

    );
  }
}
