import 'package:final_project_gym/Pages/GymHome.dart';
import 'package:flutter/material.dart';

class RecommendedProgramInfo extends StatefulWidget {
  const RecommendedProgramInfo({Key? key}) : super(key: key);

  @override
  State<RecommendedProgramInfo> createState() => _RecommendedProgramInfoState();
}

class _RecommendedProgramInfoState extends State<RecommendedProgramInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black
          ),
          onPressed: () {
            Navigator.pop(context);
          }
        ),
        title: const Center(
          child: Text(
            'Muscle Size',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30
            ),
          ),
        ),
      ),
      body: Stack(
        // alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            'images/run.webp',
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          Container(
            margin: const EdgeInsets.only(top: 200),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Text(
                    'Full Body',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Colors.black
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Days per week:  ',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              'X days',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.green
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            Text(
                              'Goal:  ',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              'Gain',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.green
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            Text(
                              'Tools:  ',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              '(selected tools)',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.green
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            Text(
                              'Level:  ',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              'Beginner',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.green
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            Text(
                              'Notes:  ',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black
                              ),
                            ),
                            Text(
                              ' ',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.green
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ),

                  const Spacer(),
                  //Set as default button
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20
                    ),
                    child: Container(
                      width: 220,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Exercise())
                          );
                        },
                        child: const Text(
                          'Set as default',
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
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
