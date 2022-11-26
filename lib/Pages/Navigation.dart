import 'package:final_project_gym/Pages/Gym.dart';
import 'package:final_project_gym/Pages/Home.dart';
import 'package:final_project_gym/Pages/Nutrition.dart';
import 'package:final_project_gym/Pages/Profile.dart';
import 'package:final_project_gym/Pages/Recomended_Program_Info.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _HomeState();
}

class _HomeState extends State<Navigation> {
  int currentIndex = 0;
  List<Widget> screens = [
    MyApp(),
    Gym(),
    Home(),
    Nutrition(),
  ];
  List<Widget> plusScreens = [
    RecommendedProgramInfo()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.menu),
        title: const Text(
          'Gym Hub',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),
        ),
        actions: [
          MaterialButton(
            onPressed: (){
              setState(() {

              });
            },
            child: const Icon(Icons.notifications,color: Colors.white),
            minWidth: 20,
          ),
          MaterialButton(
            padding: const EdgeInsetsDirectional.only(end: 20,start: 10),
            onPressed: (){},
            child: const Icon(Icons.chat_bubble_outline,color: Colors.white),
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
