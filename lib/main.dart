import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  
  
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int counter1 = 0;
  int counter2 = 0;
  int counter3 = 0;
  int counter4 = 0;
  Color color1 = Colors.blue;
  Color color2 = Colors.blueAccent;
  Color color3 = Colors.lightBlue;
  Color color4 = Colors.lightBlueAccent;
  
  // Errors when trying to extract InkWell instead of copying it 4 times:
  // "Reference to an enclosing class method cannot be extracted."
  // "Write to 'counter1' cannot be extracted."

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: ListView(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                  counter1++;
                  if (counter1 == 5) {
                    color1 = Colors.green;
                  }
                 }
                );
               },
                child: Container(
                  height: 50,
                  color: color1,
                  child: Center(
                    child: Text('$counter1'),
                  ) 
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                  counter2++;
                  if (counter2 == 5) {
                    color2 = Colors.green;
                  }
                 }
                );
               },
                child: Container(
                  height: 50,
                  color: color2,
                  child: Center(
                    child: Text('$counter2'),
                  ) 
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                  counter3++;
                  if (counter3 == 5) {
                    color3 = Colors.green;
                  }
                 }
                );
               },
                child: Container(
                  height: 50,
                  color: color3,
                  child: Center(
                    child: Text('$counter3'),
                  ) 
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                  counter4++;
                  if (counter4 == 5) {
                    color4 = Colors.green;
                  }
                 }
                );
               },
                child: Container(
                  height: 50,
                  color: color4,
                  child: Center(
                    child: Text('$counter4'),
                  ) 
                ),
              ),

            ],
          )
     ),
    )
   ),
  );
 }
}