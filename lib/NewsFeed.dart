import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Newsfeed extends StatelessWidget {
  final ScrollController scrollController;
  final PanelController panelController;

  const Newsfeed({
    Key? key,
    required this.scrollController,
    required this.panelController
  }) : super(key: key);

  Widget StorySection() =>  Padding(
    padding: const EdgeInsets.all(15.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage('https://img.search.brave.com/rDyllrwwpvfoJQmRSbGQDH6XvjvF2i9ot7sZp_LPUVU/rs:fit:479:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC4x/a0V0a05fNUhES0RF/YTdPUXJTbEd3SGFI/ViZwaWQ9QXBp'),
            ),
            CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white,
              child: Center(child: Icon(Icons.add)),
            ),
          ],
        ),
      ],
    ),
  );

  Widget NewsSection() =>  Container(
    color: Color.fromARGB(255, 122, 122, 122),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage('https://img.search.brave.com/rDyllrwwpvfoJQmRSbGQDH6XvjvF2i9ot7sZp_LPUVU/rs:fit:479:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC4x/a0V0a05fNUhES0RF/YTdPUXJTbEd3SGFI/ViZwaWQ9QXBp'),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lorem Ipsum',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  Text(
                    '12h',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                ],
              ),
              new Spacer(),
              Icon(Icons.height)
            ],
          ),
          // Image.asset('images/bg.png')
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10
            ),
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(width: 1)
                ),
                child: Image.asset('images/Muscular System 1.png', height: 200,)),
          ),
          Row(
            children: [
              Icon(Icons.heart_broken_rounded),
              SizedBox(width: 10),
              Text(
                  '1.2k'
              ),
              new Spacer(),
              Text(
                  '33'
              ),
              SizedBox(width: 10),
              Icon(Icons.chat_bubble,color: Colors.white,),
            ],
          )
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) =>
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          color: Color.fromARGB(255, 146, 146, 146),
        ),
        child: ListView(
          controller: scrollController,
          children: [
            buildDragButton(),
            Column(
              children: [
                Container(
                  height: 80,
                  color: Color.fromARGB(255, 122, 122, 122),
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => StorySection(),
                    separatorBuilder: (context, index) => SizedBox(width: 5),
                    itemCount: 10,
                  ),
                ),
                SizedBox(height: 10),
                ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => NewsSection(),
                    separatorBuilder: (context, index) => SizedBox(height: 10),
                    itemCount: 15)
              ],
            )
          ]
        ),
      );

  Widget buildDragButton() => GestureDetector(
        child: Container(
          width: double.infinity,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News Feed',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        onTap: togglePanel,
      );

  void togglePanel() =>
      panelController.isPanelOpen ? panelController.close() : panelController
          .open();
}