import 'dart:ui';

import '../widget/chart_workout_progress.dart';
import '../theme/colors.dart';

import '../data/latest_workout.dart';
import '../widget/chart_activity_status.dart';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Progress"),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.save_alt),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back",
                        style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Sopheamen",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: black.withOpacity(0.03),
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Icon(LineIcons.bell),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 145,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(colors: [secondary, primary]),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          width: (size.width),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "BMI (Body Mass Index)",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: white),
                              ),
                              Text(
                                "You have a normal weight",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: white),
                              ),
                              Container(
                                width: 95,
                                height: 35,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [fourthColor, thirdColor]),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "View More",
                                    style:
                                        TextStyle(fontSize: 13, color: white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient:
                              LinearGradient(colors: [fourthColor, thirdColor]),
                        ),
                        child: Center(
                          child: Text(
                            "20,3",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Activity Status",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                    color: secondary.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(30)),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      child: LineChart(activityData()),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Heart Rate",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 80,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      //
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " Progress",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: white),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(children: [
                Container(
                  width: 120,
                  height: 35,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [secondary, primary]),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Weight ",
                        style: TextStyle(fontSize: 13, color: white),
                      ),
                      Divider(
                        height: 1,
                        indent: 15,
                        endIndent: 15,
                        thickness: 1,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Container(
                  width: 120,
                  height: 35,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [secondary, primary]),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.calendar_month),
                      Text(
                        "3 Months",
                        style: TextStyle(fontSize: 13, color: white),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: white,
                      )
                    ],
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "     ",
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 15, 94, 159)),
                  ),
                  Text(
                    "140 lb",
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 15, 94, 159)),
                  ),
                  Text(
                    "160 lb",
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 15, 94, 159)),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Start",
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                  Text(
                    "Current",
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                  Text(
                    "Change",
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                          color: black.withOpacity(0.01),
                          spreadRadius: 20,
                          blurRadius: 10,
                          offset: Offset(0, 10))
                    ],
                    borderRadius: BorderRadius.circular(30)),
                child: LineChart(
                  workoutProgressData(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Entries",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: white),
                  ),
                  Text(
                    "See more",
                    style: TextStyle(fontSize: 15, color: white),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(latestWorkoutJson.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: white,
                          boxShadow: [
                            BoxShadow(
                                color: black.withOpacity(0.01),
                                spreadRadius: 20,
                                blurRadius: 10,
                                offset: Offset(0, 10))
                          ],
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Flexible(
                              child: Container(
                                height: 55,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      latestWorkoutJson[index]['title'],
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      latestWorkoutJson[index]['description'],
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: black.withOpacity(0.5)),
                                    ),
                                    Stack(children: [
                                      Container(
                                        width: size.width,
                                        height: 10,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: bgTextField),
                                      ),
                                      Container(
                                        width: size.width *
                                            (latestWorkoutJson[index]
                                                ['progressBar']),
                                        height: 10,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            gradient: LinearGradient(
                                                colors: [primary, secondary])),
                                      )
                                    ])
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              child: Center(
                                child: Icon(Icons.camera_alt,
                                    size: 11, color: primary),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
