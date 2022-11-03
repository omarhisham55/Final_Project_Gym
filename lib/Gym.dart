import 'package:flutter/material.dart';

class Gym extends StatefulWidget {
  const Gym({Key? key}) : super(key: key);

  @override
  State<Gym> createState() => _GymState();
}

class _GymState extends State<Gym> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 102, 102, 102),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/gym.png'),
            Text(
              'No schdeule yet',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
              style: TextStyle(
                color: Colors.white
              )
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 20
              ),
              child: Container(
                width: double.infinity,
                child: MaterialButton(
                  onPressed: ()
                  {
                    openDialogExperience();
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => Home())
                    // );
                  },
                  child: Text(
                    'Create',
                    style: TextStyle(
                        fontSize:20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 152, 191, 11)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Experience --Done
  Future openDialogExperience() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color.fromARGB(255, 66, 66, 66),
        title: Center(
          child: Text('Experience',style: TextStyle(color: Colors.white),)),
        actions: [
          TextButton(
              onPressed: (){
                // setState(() {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => CallPayment())
                  // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Beginner',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                  color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Intermediate',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Advanced',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          SizedBox(height: 20),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Icon(Icons.chevron_right,color: Colors.white,)
              ],
            ),
            onTap: ()=> openDialogGoal(),
          )
        ],
      ));

  //Goal --Done
  Future openDialogGoal() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color.fromARGB(255, 66, 66, 66),
        title: Center(
            child: Text('Goal',style: TextStyle(color: Colors.white),)),
        actions: [
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Strength',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Muscle size',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cardio',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          SizedBox(height: 20),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Icon(Icons.chevron_right,color: Colors.white,)
              ],
            ),
            onTap: () => openDialogDays(),
          )
        ],
      ));

  //Days --Done
  Future openDialogDays() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color.fromARGB(255, 66, 66, 66),
        title: Center(
            child: Text('Choose your training days',style: TextStyle(color: Colors.white),)),
        actions: [
          Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: Color.fromARGB(255, 152, 191, 11),
                child: Text(
                  'S',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
              SizedBox(width: 6),
              CircleAvatar(
                radius: 18,
                backgroundColor: Color.fromARGB(255, 152, 191, 11),
                child: Text(
                  'S',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
              SizedBox(width: 6),
              CircleAvatar(
                radius: 18,
                backgroundColor: Color.fromARGB(255, 152, 191, 11),
                child: Text(
                  'M',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
              SizedBox(width: 6),
              CircleAvatar(
                radius: 18,
                backgroundColor: Color.fromARGB(255, 152, 191, 11),
                child: Text(
                  'T',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
              SizedBox(width: 6),
              CircleAvatar(
                radius: 18,
                backgroundColor: Color.fromARGB(255, 152, 191, 11),
                child: Text(
                  'W',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
              SizedBox(width: 6),
              CircleAvatar(
                radius: 18,
                backgroundColor: Color.fromARGB(255, 152, 191, 11),
                child: Text(
                  'T',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
              SizedBox(width: 6),
              CircleAvatar(
                radius: 18,
                backgroundColor: Color.fromARGB(255, 152, 191, 11),
                child: Text(
                  'F',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Icon(Icons.chevron_right,color: Colors.white,)
              ],
            ),
            onTap: () => openDialogPC(),
          )
        ],
      ));

  //PC --Done
  Future openDialogPC() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color.fromARGB(255, 66, 66, 66),
        title: Center(
            child: Text('Do you need a Personal trainer ?',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: (){
                      openDialogWorkoutTools();
                      // setState(() {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(builder: (context) => CallPayment())
                      //   );
                      // });
                    },
                    child: Container(
                      color: Color.fromARGB(255, 152, 191, 11),
                      width: 100,
                      height: 50,
                      child: Center(
                        child: Text(
                          'Yes',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                  )
                ),
                SizedBox(width: 20),
                TextButton(
                    onPressed: (){
                      openDialogWorkoutTools();
                      // setState(() {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(builder: (context) => CallPayment())
                      //   );
                      // });
                    },
                    child: Container(
                      color: Color.fromARGB(255, 152, 191, 11),
                      width: 100,
                      height: 50,
                      child: Center(
                        child: Text(
                          'No',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    )
                ),
              ],
            ),
          ),
        ],
      ));

  //WorkoutTools
  Future openDialogWorkoutTools() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color.fromARGB(255, 66, 66, 66),
        title: Center(
            child: Text('Experience',style: TextStyle(color: Colors.white),)),
        actions: [
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Beginner',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Intermediate',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Advanced',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          SizedBox(height: 20),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Icon(Icons.chevron_right,color: Colors.white,)
              ],
            ),
          )
        ],
      ));

  //Height & Weight
  Future openDialogHW() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color.fromARGB(255, 66, 66, 66),
        title: Center(
            child: Text('Experience',style: TextStyle(color: Colors.white),)),
        actions: [
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Beginner',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Intermediate',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Advanced',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          SizedBox(height: 20),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Icon(Icons.chevron_right,color: Colors.white,)
              ],
            ),
          )
        ],
      ));

  //Injuries
  Future openDialogInjuries() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color.fromARGB(255, 66, 66, 66),
        title: Center(
            child: Text('Experience',style: TextStyle(color: Colors.white),)),
        actions: [
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Beginner',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Intermediate',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Advanced',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          SizedBox(height: 20),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Icon(Icons.chevron_right,color: Colors.white,)
              ],
            ),
          )
        ],
      ));

  //Body Measurments
  Future openDialogBodyMeasurments() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color.fromARGB(255, 66, 66, 66),
        title: Center(
            child: Text('Experience',style: TextStyle(color: Colors.white),)),
        actions: [
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Beginner',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Intermediate',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Advanced',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          SizedBox(height: 20),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Icon(Icons.chevron_right,color: Colors.white,)
              ],
            ),
          )
        ],
      ));

  //Inbody
  Future openDialogInbody() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color.fromARGB(255, 66, 66, 66),
        title: Center(
            child: Text('Experience',style: TextStyle(color: Colors.white),)),
        actions: [
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Beginner',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Intermediate',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          TextButton(
              onPressed: (){
                // setState(() {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CallPayment())
                // );
                // });
              },
              child: Container(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Advanced',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.white),
                    color: Color.fromARGB(255, 72, 72, 72)
                ),
              )
          ),
          SizedBox(height: 20),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Icon(Icons.chevron_right,color: Colors.white,)
              ],
            ),
          )
        ],
      ));

}