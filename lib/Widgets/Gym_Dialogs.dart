import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';


List<bool> selectedButtonExp = [false, false, false];
List<bool> selectedButtonG = [false, false, false];
List<bool> selectedButtonDay = [false, false, false, false, false, false, false];
List<bool> selectedButtonEquip = [false, false, false, false, false];
const Color colorGreen = Color.fromARGB(255, 152, 191, 11);
const Color colorSelected = Color.fromARGB(255, 54, 70, 0);
const Color colorBackground = Color.fromARGB(255, 66, 66, 66);
Border borderSelected = Border.all(color: const Color.fromARGB(255, 33, 249, 33),width: 3);
Border border = Border.all(color: Colors.white,width: 1);
bool isSelected = false;
bool bodyMeasurementsSelect = false;
double height = 180;
double weight = 70;

List<Widget> experience = [
  Padding(
    padding: const EdgeInsets.all(10.0),
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
  Padding(
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
  Padding(
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
];
List<Widget> goal = [
  Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
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
  Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
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
  Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
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
];

// Done\
openDialogExperience(context) => showDialog(
  context: context,
  builder: (context) => StatefulBuilder(builder: (context, StateSetter setState){
    return Dialog(
      backgroundColor: colorBackground,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(child: Text('Experience',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold))),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  border: selectedButtonExp[0] ? borderSelected : border,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: MaterialButton(
                // color: Color.fromARGB(255, 72, 72, 72),
                  onPressed: (){
                    setState(() {
                      selectedButtonExp = [true, false, false];
                    });
                  },
                  child: experience[0]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  border: selectedButtonExp[1] ? borderSelected : border,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: MaterialButton(
                // color: Color.fromARGB(255, 72, 72, 72),
                  onPressed: (){
                    setState(() {
                      selectedButtonExp = [false, true, false];
                    });
                  },
                  child: experience[1]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  border: selectedButtonExp[2] ? borderSelected : border,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: MaterialButton(
                // color: Color.fromARGB(255, 72, 72, 72),
                  onPressed: (){
                    setState(() {
                      selectedButtonExp = [false, false, true];
                    });
                  },
                  child: experience[2]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
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
              // onTap: ()=> openDialogGoalTest(),
              onTap: () {
                Navigator.of(context).pop();
                openDialogGoal(context);
              },
            ),
          )
        ],
      ),
    );
  }
  ),
);

// Done\
openDialogGoal(context) => showDialog(
  context: context,
  barrierDismissible: false,
  builder: (context) => StatefulBuilder(builder: (context, StateSetter setState){
    return Dialog(
      backgroundColor: colorBackground,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: [
              IconButton(
                  icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.popUntil(context, (route) => openDialogExperience(context));
                  }
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Goal',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  border: selectedButtonG[0] ? borderSelected : border,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: MaterialButton(
                // color: Color.fromARGB(255, 72, 72, 72),
                  onPressed: (){
                    setState(() {
                      selectedButtonG = [true, false, false];
                    });
                  },
                  child: goal[0]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  border: selectedButtonG[1] ? borderSelected : border,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: MaterialButton(
                // color: Color.fromARGB(255, 72, 72, 72),
                  onPressed: (){
                    setState(() {
                      selectedButtonG = [false, true, false];
                    });
                  },
                  child: goal[1]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  border: selectedButtonG[2] ? borderSelected : border,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: MaterialButton(
                // color: Color.fromARGB(255, 72, 72, 72),
                  onPressed: (){
                    setState(() {
                      selectedButtonG = [false, false, true];
                    });
                  },
                  child: goal[2]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
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
              onTap: () {
                Navigator.of(context).pop();
                openDialogDate(context);
              }
            ),
          )
        ],
      ),
    );
  })
);

//Done\
openDialogDate(context) => showDialog(
  context: context,
  barrierDismissible: false,
  builder: (context) => StatefulBuilder(builder: (context, StateSetter setState){
    return Dialog(
      backgroundColor: colorBackground,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: [
              IconButton(
                  icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.popUntil(context, (route) => openDialogGoal(context));
                  }
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  """Choose your training
                      days""",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          MultiSelectContainer(
              itemsPadding: const EdgeInsetsDirectional.all(12),
              itemsDecoration: MultiSelectDecorations(
                decoration: BoxDecoration(
                    color: colorGreen,
                    borderRadius: BorderRadius.circular(50)
                ),
                selectedDecoration: BoxDecoration(
                    color: colorSelected,
                    borderRadius: BorderRadius.circular(50)
                ),
              ),
              items: [
                MultiSelectCard(value: 'S', label: 'S'),
                MultiSelectCard(value: 'S', label: 'S'),
                MultiSelectCard(value: 'M', label: 'M'),
                MultiSelectCard(value: 'T', label: 'T'),
                MultiSelectCard(value: 'W', label: 'W'),
                MultiSelectCard(value: 'T', label: 'T'),
                MultiSelectCard(value: 'F', label: 'F'),
              ], onChange: (allSelectedItems, selectedItem) {}

          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
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
                onTap: () {
                  Navigator.of(context).pop();
                  openDialogPC(context);
                }
            ),
          )
        ],
      ),
    );
  })
);

//Done\
openDialogPC(context) => showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => StatefulBuilder(builder: (context, StateSetter setState){
      return Dialog(
        backgroundColor: colorBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: [
                IconButton(
                    icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.popUntil(context, (route) => openDialogDate(context));
                    }
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    """Do you need a Personal
                             trainer ?""",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                        openDialogWorkoutTools(context);
                      },
                      child: Container(
                        color: const Color.fromARGB(255, 152, 191, 11),
                        width: 100,
                        height: 50,
                        child: const Center(
                          child: Text(
                            'Yes',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ),
                      )
                  ),
                  const SizedBox(width: 20),
                  TextButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                        openDialogWorkoutTools(context);
                      },
                      child: Container(
                        color: const Color.fromARGB(255, 152, 191, 11),
                        width: 100,
                        height: 50,
                        child: const Center(
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
        ),
      );
    })
);

//Done\
openDialogWorkoutTools(context) => showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => StatefulBuilder(builder: (context, StateSetter setState){
      return Dialog(
        backgroundColor: colorBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: [
                IconButton(
                    icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.popUntil(context, (route) => openDialogPC(context));
                    }
                ),
                const Text(
                  'Workout tools',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            const Center(
              child: Text(
                'Select your equipment workout tools',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            const SizedBox(height: 30),
            MultiSelectContainer(
              showInListView: true,
              itemsPadding: const EdgeInsetsDirectional.all(10),
              itemsDecoration: MultiSelectDecorations(
                decoration: BoxDecoration(
                  color: colorGreen,
                  borderRadius: BorderRadius.circular(30)
                ),
                selectedDecoration: BoxDecoration(
                  color: colorSelected,
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
                items: [
                MultiSelectCard(value: 'Barbell', label: 'Barbell'),
                MultiSelectCard(value: 'Dumbbells', label: 'Dumbbells'),
                MultiSelectCard(value: 'Machines', label: 'Machines'),
                MultiSelectCard(value: 'Body weight', label: 'Body weight'),
                MultiSelectCard(value: 'Cables', label: 'Cables'),
              ], onChange: (allSelectedItems, selectedItem) {}

            ),
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
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
              onTap: () {
                Navigator.of(context).pop();
                openDialogHW(context);
              },
            )
          ],
        ),
      );
    })
);
//Done\
openDialogHW(context) => showDialog(
  context: context,
  builder: (context) => StatefulBuilder(builder: (context, StateSetter setState){
    return Dialog(
      backgroundColor: colorBackground,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: [
                IconButton(
                    icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.popUntil(context, (route) => openDialogWorkoutTools(context));
                    }
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    """Would you like to add 
                   your height and weight ?""",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset('images/man.png', height: 200, width: 150),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${weight.round()} ',
                          style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Colors.white
                          ),
                        ),
                        const Text(
                          'Kg',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Row(
                        children: [
                          Text(
                            '${height.round()} ',
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Colors.white
                            ),
                          ),
                          const Text(
                            'cm',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: -1,
                      child: Container(
                        width: 250,
                        child: Slider(
                          value: height,
                          max: 210,
                          min: 120,
                          activeColor: colorGreen,
                          inactiveColor: Colors.white,
                          onChanged: (value){
                            setState(() {
                              height = value;
                            });
                          },

                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Slider(
              value: weight,
              max: 200,
              min: 40,
              activeColor: colorGreen,
              inactiveColor: Colors.white,
              onChanged: (value){
                setState(() {
                  weight = value;
                });
              },
            ),
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
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
              onTap: () {
                Navigator.of(context).pop();
                openDialogInjuries(context);
              },
            )
          ],
        ),
      ),
    );
  })
);

//Done\
openDialogInjuries(context) => showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => StatefulBuilder(builder: (context, StateSetter setState){
      return Dialog(
        backgroundColor: colorBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: [
                IconButton(
                    icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.popUntil(context, (route) => openDialogHW(context));
                    }
                ),
                const Text(
                  """Do you have any
                      injuries ?""",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            MultiSelectContainer(
              showInListView: true,
              itemsPadding: const EdgeInsetsDirectional.all(10),
              itemsDecoration: MultiSelectDecorations(
                decoration: BoxDecoration(
                    color: colorGreen,
                    borderRadius: BorderRadius.circular(30)
                ),
                selectedDecoration: BoxDecoration(
                    color: colorSelected,
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
              items: [
                MultiSelectCard(value: 'Shoulder joint osteoarthritis', label: 'Shoulder joint osteoarthritis'),
                MultiSelectCard(value: 'rotator cuff tendinitis', label: 'rotator cuff tendinitis'),
                MultiSelectCard(value: 'Recurrent shoulder dislocation', label: 'Recurrent shoulder dislocation'),
                MultiSelectCard(value: 'Ankle sprain', label: 'Ankle sprain'),
                MultiSelectCard(value: 'Biceps tendinitis', label: 'Biceps tendinitis'),
                MultiSelectCard(value: 'Calf muscle tear', label: 'Calf muscle tear'),
                MultiSelectCard(value: 'Anterior Cruciate Ligament tear', label: 'Anterior Cruciate Ligament tear'),
                MultiSelectCard(value: 'Tennis elbow', label: 'Tennis elbow'),
                MultiSelectCard(value: 'Meniscus injury', label: 'Meniscus injury'),
                MultiSelectCard(value: 'Lower back pains', label: 'Lower back pains'),
                MultiSelectCard(value: 'Knee osteoarthritis', label: 'Knee osteoarthritis'),
              ], onChange: (allSelectedItems, selectedItem) {}

          ),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
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
            onTap: () {
              Navigator.of(context).pop();
              openDialogBodyMeasurements(context);
            },
          )
        ],
      ),
    );
  })
);

//Done\
openDialogBodyMeasurements(context) => showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => StatefulBuilder(builder: (context, StateSetter setState){
      return Dialog(
          backgroundColor: colorBackground,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  IconButton(
                      icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.popUntil(context, (route) => openDialogInjuries(context));
                      }
                  ),
                  const Text(
                    'Body measurements',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              const Text(
                'How would you like to calculate your measurements ?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white
                ),
              ),
              TextButton(
                  onPressed: (){
                    setState(() {
                      bodyMeasurementsSelect = true;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Through picture',
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
                        border: bodyMeasurementsSelect ? borderSelected : border,
                    ),
                  )
              ),
              TextButton(
                  onPressed: (){
                    setState(() {
                      bodyMeasurementsSelect = false;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Manually',
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
                      border: bodyMeasurementsSelect ? border : borderSelected,
                    ),
                  )
              ),
              GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
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
                onTap: () {
                  Navigator.of(context).pop();
                  openDialogInbody(context);
                },
              )
            ],
          )
      );
    })
);

// In_body
openDialogInbody(context) => showDialog(
    context: context,
    builder: (context) => StatefulBuilder(builder: (context, StateSetter setState){
      return Dialog(
        backgroundColor: colorBackground,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                IconButton(
                    icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.popUntil(context, (route) => openDialogBodyMeasurements(context));
                    }
                ),
                const Text(
                  'Body measurements',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 15.0,
                  top: 15.0
              ),
              child: Text(
                'Inbody',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
                textAlign: TextAlign.start,
              ),
            ),
            //input column
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                    top: 15.0
                  ),
                  child: Text(
                    '${titles[2]}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Text(
                        '${bodyFatPercent.round()}',
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.percent)
                    ],
                  ),
                ),
                Slider(
                  value: bodyFatPercent,
                  max: 30,
                  min: 0,
                  activeColor: colorGreen,
                  inactiveColor: Colors.white,
                  onChanged: (value){
                    setState(() {
                      bodyFatPercent = value;
                    });
                  },
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0,
                      top: 15.0
                  ),
                  child: Text(
                    '${titles[2]}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Text(
                        '${bodyFatPercent.round()}',
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.percent)
                    ],
                  ),
                ),
                Slider(
                  value: bodyFatPercent,
                  max: 30,
                  min: 0,
                  activeColor: colorGreen,
                  inactiveColor: Colors.white,
                  onChanged: (value){
                    setState(() {
                      bodyFatPercent = value;
                    });
                  },
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0,
                      top: 15.0
                  ),
                  child: Text(
                    '${titles[2]}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Text(
                        '${bodyFatPercent.round()}',
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.percent)
                    ],
                  ),
                ),
                Slider(
                  value: bodyFatPercent,
                  max: 30,
                  min: 0,
                  activeColor: colorGreen,
                  inactiveColor: Colors.white,
                  onChanged: (value){
                    setState(() {
                      bodyFatPercent = value;
                    });
                  },
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0,
                      top: 15.0
                  ),
                  child: Text(
                    '${titles[2]}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Text(
                        '${bodyFatPercent.round()}',
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.percent)
                    ],
                  ),
                ),
                Slider(
                  value: bodyFatPercent,
                  max: 30,
                  min: 0,
                  activeColor: colorGreen,
                  inactiveColor: Colors.white,
                  onChanged: (value){
                    setState(() {
                      bodyFatPercent = value;
                    });
                  },
                ),
              ],
            ),
            //Save Button
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 20
              ),
              child: Container(
                width: 220,
                child: MaterialButton(
                  onPressed: () async {
                    setState(() {

                    });
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => Home())
                    // );
                  },
                  child: const Text(
                    'Save',
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
        )
      );
    }
  )
);
double bodyFatPercent = 0;
List<String> titles = [
  'Body fat percent',
  'Muscle mass',
  'Fat mass',
  'BMI'
];

