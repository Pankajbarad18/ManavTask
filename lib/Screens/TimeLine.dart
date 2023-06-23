// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Data/linechart.dart';

class TimeChart extends StatefulWidget {
  const TimeChart({super.key});

  @override
  State<TimeChart> createState() => _TimeChartState();
}

class _TimeChartState extends State<TimeChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "lib/Images/HabitsPageBackground.png",
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
            ),
            Positioned(
              top: 200,
              child: Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(left: 30),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey Hermano!!",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Use This To Be Inspired",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          height: 900,
          child: ListView(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            children: const [
              SizedBox(
                height: 200,
                child: LineChartSample1(),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: LineChartSample2(),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: LineChartSample3(),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
