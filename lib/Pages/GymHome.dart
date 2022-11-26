import 'package:final_project_gym/Pages/NewsFeed.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Exercise extends StatefulWidget {
  const Exercise({Key? key}) : super(key: key);

  @override
  State<Exercise> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  Widget exercise() => Column(
      children: [
        Row(
          children: const [
            CircleAvatar(
              radius: 5,
              backgroundColor: Colors.green,
            ),
            Text(
              ' Warm up',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15
              ),
            )
          ],
        ),
        const SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              MaterialButton(
                onPressed: (){
                  panelController.isPanelOpen ? panelController.close() : panelController
                      .open();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/run.webp',
                        width: 130,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          children: const [
                            Text(
                              'Exercise name',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Exercise type',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'X Sets. X Reps',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 2,
                ),
              ),
              MaterialButton(
                onPressed: (){

                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/run.webp',
                        width: 130,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          children: const [
                            Text(
                              'Exercise name',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Exercise type',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'X Sets. X Reps',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]
  );
  final panelController = PanelController();
  int sets = 0, reps = 0;
  @override
  Widget build(BuildContext context) {
    final closePanel = MediaQuery.of(context).size.height*0;
    final openPanel = MediaQuery.of(context).size.height*.5;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            'Exercise',
            style: TextStyle(
                color: Colors.white
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: SlidingUpPanel(
        controller: panelController,
        minHeight: closePanel,
        maxHeight: openPanel,
        defaultPanelState: PanelState.CLOSED,
        backdropTapClosesPanel: true,
        isDraggable: true,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.calendar_month_sharp),
                                Text(
                                  ' Sun',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Full Body',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            Container(
                              height: 40,
                              child: MaterialButton(
                                onPressed: () {

                                },
                                child: const Text(
                                  'Start workout',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 152, 191, 11),
                                  borderRadius: BorderRadius.circular(30)
                              ),
                            ),
                            const SizedBox(height: 15),
                            Container(
                              height: 40,
                              child: MaterialButton(
                                onPressed: () {

                                },
                                child: const Text(
                                  'End day',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 5,
                          backgroundColor: Colors.green,
                        ),
                        Text(
                          ' Warm up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          MaterialButton(
                            onPressed: (){
                              panelController.isPanelOpen ? panelController.close() : panelController
                                  .open();
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 15
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'images/run.webp',
                                    width: 130,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Column(
                                      children: const [
                                        Text(
                                          'Exercise name',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          'Exercise type',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          'X Sets. X Reps',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Divider(
                              color: Colors.grey,
                              thickness: 2,
                            ),
                          ),
                          MaterialButton(
                            onPressed: (){

                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'images/run.webp',
                                    width: 130,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Column(
                                      children: const [
                                        Text(
                                          'Exercise name',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          'Exercise type',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          'X Sets. X Reps',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.green,
                    ),
                    Text(
                      ' Exercise',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      MaterialButton(
                        onPressed: (){

                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 15
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/run.webp',
                                width: 130,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Column(
                                  children: const [
                                    Text(
                                      'Exercise name',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Exercise type',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      'X Sets. X Reps',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                      ),
                      MaterialButton(
                        onPressed: (){

                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/run.webp',
                                width: 130,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Column(
                                  children: const [
                                    Text(
                                      'Exercise name',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Exercise type',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      'X Sets. X Reps',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.green,
                    ),
                    Text(
                      ' Stretch',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      MaterialButton(
                        onPressed: (){

                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 15
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/run.webp',
                                width: 130,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Column(
                                  children: const [
                                    Text(
                                      'Exercise name',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Exercise type',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      'X Sets. X Reps',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 2,
                        ),
                      ),
                      MaterialButton(
                        onPressed: (){

                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/run.webp',
                                width: 130,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Column(
                                  children: const [
                                    Text(
                                      'Exercise name',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Exercise type',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      'X Sets. X Reps',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        panelBuilder: (scrollController) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Exercise name',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '$sets Sets. $reps Reps',
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Container(
                        height: 40,
                        child: MaterialButton(
                          onPressed: () {

                          },
                          child: const Text(
                            'Start',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 152, 191, 11),
                            borderRadius: BorderRadius.circular(30)
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Image.asset(
              'images/run.webp',
            )
          ],
        )
      ),
    );
  }
}
