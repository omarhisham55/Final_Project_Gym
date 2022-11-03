import 'package:final_project_gym/NewsFeed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final panelController = PanelController();
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
        color: Color.fromARGB(255, 102, 102, 102),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                height: 140,
                child: MaterialButton(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.purple,
                ),
              ),
            ),
            Image.asset('images/Muscular System 1.png', height: 500,)
          ],
        ),
      ),
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      panelBuilder: (scrollController) => Newsfeed(
        scrollController: scrollController,
        panelController: panelController,
          )
    );
  }
}
