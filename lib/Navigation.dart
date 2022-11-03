import 'package:final_project_gym/Gym.dart';
import 'package:final_project_gym/Home.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _HomeState();
}

class _HomeState extends State<Navigation> {
  int currentIndex = 0;
  List<Widget> screens = [
    Home(),
    Gym()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.menu),
        title: Text(
          'Gym Hub',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
        ),
        actions: [
          MaterialButton(
            onPressed: (){},
            child: Icon(Icons.notifications,color: Colors.white),
            minWidth: 20,
          ),
          MaterialButton(
            padding: EdgeInsetsDirectional.only(end: 20,start: 10),
            onPressed: (){},
            child: Icon(Icons.chat_bubble_outline,color: Colors.white),
            minWidth: 20,
          ),
        ],
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: 3,
        onTap: (value){
          setState(() {
            currentIndex = value;
          });
        },
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            label: 'progress',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_bar),
            label: 'gym',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank_outlined),
            label: 'food'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'profile'
          )
        ]
      ),
    );
  }
}
