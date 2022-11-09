import 'package:final_project_gym/Gym.dart';
import 'package:final_project_gym/Home.dart';
import 'package:final_project_gym/Nutrition.dart';
import 'package:final_project_gym/Profile.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _HomeState();
}

class _HomeState extends State<Navigation> {
  int currentIndex = 0;
  List<Widget> screens = [
    Profile(),
    Gym(),
    Home(),
    Nutrition(),
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
          currentIndex: currentIndex,
        onTap: (value){
          setState(() {
            currentIndex = value;
          });
        },
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'profile',
            backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_bar),
            label: 'gym',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank_outlined),
            backgroundColor: Colors.black,
            label: 'food'
          )
        ]
      ),
    );
  }
}
