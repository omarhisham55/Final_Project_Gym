import 'package:final_project_gym/Widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:final_project_gym/Pages/NewsFeed.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Color _greyBg = const Color.fromARGB(255, 102, 102, 102);
  final Color _whiteText = Colors.white;

  final _panelController = PanelController();

  final List<String> _offerTitle = ['Special Offers 1', 'Special Offers 2', 'Special Offers 3'];
  final List<String> _offerText = [
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard.',
    'dummy text of the printing and typesetting industry. Lorem Ipsum is simply Lorem Ipsum has been the industry\'s standard.',
    'typesetting industry.Lorem Ipsum is simply dummy text of the printing and  Lorem Ipsum has been the industry\'s standard.',
  ];
  List<String> sales = ['images/food.png', 'images/nutrition.png', 'images/yoga.png'];


  Widget specialOffer() => Stack(
    children: [
      Image.asset(sales[0], width: double.infinity,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextClass(_offerTitle[0], TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: _whiteText)),
          const SizedBox(height: 10),
          TextClass(_offerText[0], TextStyle(color: _whiteText)),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.07;
    final panelHeightMax = MediaQuery.of(context).size.height;
    return SlidingUpPanel(
      controller: _panelController,
      minHeight: panelHeightClosed,
      maxHeight: panelHeightMax,
      parallaxEnabled: true,
      parallaxOffset: .5,
      body: Container(
        color: _greyBg,
        child: Column(
          children: [
            //Special offer section --carousel--
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: CarouselSlider(items: [sales].map((List<String> i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.purple,
                        ),
                        child: MaterialButton(
                          onPressed: () {

                          },
                          child: ListView.separated(itemBuilder: (context, index) => specialOffer(),
                            separatorBuilder: (context, index) => const SizedBox(width: 10), itemCount: 3),
                        )
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
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  height: MediaQuery.of(context).size.height * 0.16,
                  scrollDirection: Axis.horizontal,
                  // onPageChanged: callbackFunction,
                ),
              ),
            ),

            //Muscular body image
            Image.asset('images/Muscular System 1.png', height: 500,),
          ],
        ),
      ),



      //News feed
      borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      panelBuilder: (scrollController) => Newsfeed(
        scrollController: scrollController,
        panelController: _panelController,
          )
    );
  }
}
