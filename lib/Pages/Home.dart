import 'package:final_project_gym/Pages/NewsFeed.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final panelController = PanelController();
  List<String> sales = [
    'images/food.png',
    "images/nutrition.png"
  ];
  @override
  Widget build(BuildContext context) {
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.07;
    final panelHeightMax = MediaQuery.of(context).size.height;
    return SlidingUpPanel(
      controller: panelController,
      minHeight: panelHeightClosed,
      maxHeight: panelHeightMax,
      parallaxEnabled: true,
      parallaxOffset: .5,
      body: Container(
        color: const Color.fromARGB(255, 102, 102, 102),
        child: Column(
          children: [
            //Special offer section --carousel--
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                width: double.infinity,
                height: 140,
                child: CarouselSlider(items: [sales].map((List<String> i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.purple,
                          ),
                          child: MaterialButton(
                            child: Stack(
                                children: [
                                  Image.asset(i[0], width: double.infinity,),
                                  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const[
                                    Text(
                                      'Special Offers',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard.',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      );
                    },
                  );
                }).toList(),
                  options: CarouselOptions(
                    aspectRatio: 16/9,
                    viewportFraction: .8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
            ),

            //Muscular body image
            Image.asset('images/Muscular System 1.png', height: 500,),
          ],
        ),
      ),



      //News feed
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      panelBuilder: (scrollController) => Newsfeed(
        scrollController: scrollController,
        panelController: panelController,
          )
    );
  }
}
