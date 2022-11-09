import 'package:flutter/material.dart';

class Nutrition extends StatefulWidget {
  const Nutrition({Key? key}) : super(key: key);

  @override
  State<Nutrition> createState() => _NutritionState();
}

class _NutritionState extends State<Nutrition> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 102, 102, 102),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/food.png'),
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
                    openDialogAlergy();
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

  Future openDialogAlergy() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color.fromARGB(255, 66, 66, 66),
        title: Center(
            child: Text('Are you allergic to any of these food ?',style: TextStyle(color: Colors.white),)),
        actions: [
          Column(
            children: [
              Row(
                children: [
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        width: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        // width: double.infinity,
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'Eggs',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        width: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'Vegetables',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        width: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'Fruits',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        width: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'Chocolate',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  TextButton(
                      onPressed: (){
                        // openDialogWorkoutTools();
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        width: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'Cheese',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        width: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'Rice',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        width: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'Beef',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        width: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'Chicken',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        width: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'Pasta',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        width: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'Milk',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        width: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'Nuts',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        width: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'Bread',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 30),
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
                onTap: () => openDialogHealthConditions(),
              )
            ],
          ),
        ],
      )
  );
  Future openDialogHealthConditions() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color.fromARGB(255, 66, 66, 66),
        title: Center(
            child: Text('Do you have any health conditions ?',style: TextStyle(color: Colors.white),)),
        actions: [
          Column(
            children: [
              Row(
                children: [
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        // width: double.infinity,
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'lactose Intolerance',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'PCO',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'high choleterol',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  TextButton(
                      onPressed: (){
                        // openDialogWorkoutTools();
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'autoimmune disease',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'Insulin resistance',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'Diabetes type 2',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'favism (G6PD)',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'Diabetes type 2',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'hypertension',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'Pregnant',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: (){
                        // setState(() {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (context) => CallPayment())
                        //   );
                        // });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 152, 191, 11),
                        ),
                        height: 35,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              'Gastric sleeve',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 30),
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
                // onTap: () => openDialogBodyMeasurments(),
              )
            ],
          ),
        ],
      )
  );
}
