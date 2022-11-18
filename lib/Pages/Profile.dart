import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const List<Widget> fruits = <Widget>[
  Text('Apple'),
  Text('Banana'),
  Text('Orange')
];

const List<Widget> vegetables = <Widget>[
  Text('Tomatoes'),
  Text('Potatoes'),
  Text('Carrots')
];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  static const String _title = 'ToggleButtons Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: ToggleButtonsSample(title: _title),
    );
  }
}

class ToggleButtonsSample extends StatefulWidget {
  const ToggleButtonsSample({key, required this.title});

  final String title;

  @override
  State<ToggleButtonsSample> createState() => _ToggleButtonsSampleState();
}

class _ToggleButtonsSampleState extends State<ToggleButtonsSample> {
  final List<bool> selectedFood = [false, true, false, false, false, false];
  final List<bool> selectedButton = [false, true, false];
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // ToggleButtons with a single selection.
              Text('Single-select', style: theme.textTheme.subtitle2),
              const SizedBox(height: 5),
              ToggleButtons(
                direction: Axis.vertical,
                onPressed: (int index) {
                  setState(() {
                    // The button that is tapped is set to true, and the others to false.
                    for (int i = 0; i < selectedButton.length; i++) {
                      selectedButton[i] = i == index;
                    }
                  });
                },
                isSelected: selectedButton,
                children: [
                  Container(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
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
                        // border: Selected[0] ? borderSelected : border,
                        // color: Color.fromARGB(255, 72, 72, 72)
                      )
                  ),
                  Container(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
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
                      // border: Selected[1] ? borderSelected : border,
                      // color: Color.fromARGB(255, 72, 72, 72)
                    ),
                  ),
                  Container(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
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
                      // border: Selected[2] ? borderSelected : border,
                      // color: Color.fromARGB(255, 72, 72, 72)
                    ),
                  )
                ],
                // borderRadius: const BorderRadius.all(Radius.circular(8)),
                selectedBorderColor: Colors.green,
                borderColor: Colors.white,
                // selectedColor: Colors.white,
                // fillColor: Colors.red[200],
                // color: Colors.red[400],
                // constraints: const BoxConstraints(
                //   minHeight: 40.0,
                //   minWidth: 80.0,
                // ),
              ),
              const SizedBox(height: 20),
              // ToggleButtons with a multiple selection.
              Text('Multi-select', style: theme.textTheme.subtitle2),
              const SizedBox(height: 5),
              ToggleButtons(
                direction: Axis.vertical,
                onPressed: (int index) {
                  // All buttons are selectable.
                  setState(() {
                    selectedFood[index] = !selectedFood[index];
                  });
                },
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                selectedBorderColor: Colors.green,
                borderColor: Colors.white,
                isSelected: selectedFood,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
