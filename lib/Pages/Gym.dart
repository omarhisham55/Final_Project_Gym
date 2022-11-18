import 'package:final_project_gym/Widgets/Gym_Dialogs.dart';
import 'package:flutter/material.dart';

class Gym extends StatefulWidget {
  const Gym({Key? key}) : super(key: key);

  @override
  State<Gym> createState() => _GymState();
}

class _GymState extends State<Gym> {
  // var height;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 102, 102, 102),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/gym.png'),
            const Text(
              'No schedule yet',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),
            ),
            const SizedBox(height: 20),
            const Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                style: TextStyle(
                    color: Colors.white
                )
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 20
              ),
              child: Container(
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () async {
                    setState(() {
                      openDialogExperience(context);
                    });
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => Home())
                    // );
                  },
                  child: const Text(
                    'Create',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                    ),
                  ),
                ),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 152, 191, 11)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
