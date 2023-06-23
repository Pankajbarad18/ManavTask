// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Progress extends StatefulWidget {
  const Progress({super.key});

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "lib/Images/progressPageBackground.png",
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
                          "Keep Going Champ",
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
            const Divider(
              height: 30,
            ),
            Container(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Top Habits This Week",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              bottom: 10, left: 10, right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.deepPurple[100]),
                          child: const ListTile(
                              title: Text("Drinking Water",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text("Your Are Very Furious ",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              trailing: Icon(
                                Icons.local_drink,
                                color: Colors.deepPurple,
                              ),
                              leading: CircularProgressIndicator(
                                value: 1,
                                strokeWidth: 7.5,
                                color: Colors.deepPurple,
                                backgroundColor: Colors.red,
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              bottom: 10, left: 10, right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.deepPurple[100]),
                          child: const ListTile(
                              title: Text("Reading",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text(
                                  "You Are Very Excellent in Reading",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              trailing: Icon(
                                Icons.library_books,
                                color: Colors.deepPurple,
                              ),
                              leading: CircularProgressIndicator(
                                value: .95,
                                strokeWidth: 7.5,
                                color: Colors.deepPurple,
                                backgroundColor: Colors.red,
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              bottom: 10, left: 10, right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.deepPurple[100]),
                          child: const ListTile(
                              title: Text("Coding",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text(
                                  "I Think You Loved Very Much Coding",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              trailing: Icon(
                                Icons.computer,
                                color: Colors.deepPurple,
                              ),
                              leading: CircularProgressIndicator(
                                value: 0.75,
                                strokeWidth: 7.5,
                                color: Colors.deepPurple,
                                backgroundColor: Colors.red,
                              )),
                        ),
                      ],
                    ),
                  ],
                )),
            Container(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Worst Habits This Week",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              bottom: 10, left: 10, right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.deepPurple[100]),
                          child: const ListTile(
                              title: Text(
                                "Coding",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text("I Think You Forgot To Do Coding",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              trailing: Icon(
                                Icons.computer,
                                color: Colors.deepPurple,
                              ),
                              leading: CircularProgressIndicator(
                                value: 0.55,
                                strokeWidth: 7.5,
                                color: Colors.deepPurple,
                                backgroundColor: Colors.red,
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              bottom: 10, left: 10, right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.deepPurple[100]),
                          child: const ListTile(
                              title: Text("Reading",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text(
                                  "Please Make Some Serious Action Towards Reading",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              trailing: Icon(
                                Icons.library_books,
                                color: Colors.deepPurple,
                              ),
                              leading: CircularProgressIndicator(
                                value: .30,
                                strokeWidth: 7.5,
                                color: Colors.deepPurple,
                                backgroundColor: Colors.red,
                              )),
                        ),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
