// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Data/HabitListy.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  void addhabit(String type, String subtype) {
    habit.add([
      type,
      subtype,
      false,
      const Icon(
        Icons.abc,
        color: Colors.deepPurple,
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(children: [
          //TOP Banner

          Stack(
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "lib/Images/MainBackground.png",
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hey Hermano!!",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "You Have ${habit.length - counter} Task To Do",
                        style: const TextStyle(
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

          //Progress Bar
          const SizedBox(
            height: 15,
          ),
          const Divider(
            height: 15,
            thickness: 3,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 25, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Keep Going",
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                      Text("${((counter / habit.length) * 100).round()}%",
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[700]))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .85,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: LinearProgressIndicator(
                      value: counter / habit.length,
                      minHeight: 12,
                      color: Colors.deepPurple,
                      backgroundColor: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
          ),

          const SizedBox(
            height: 15,
          ),
          SizedBox(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: habit.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepPurple[100]),
                    child: ListTile(
                      title: Text(habit[index][0],
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      subtitle: Text(habit[index][1],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      trailing: habit[index][3],
                      leading: Checkbox(
                        value: habit[index][2],
                        onChanged: ((value) {
                          setState(() {
                            if (value == false) {
                              counter--;
                              habit[index][2] = value;
                            } else {
                              counter++;
                              habit[index][2] = value;
                            }
                          });
                        }),
                      ),
                    ),
                  );
                }),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple[300],
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                TextEditingController type = TextEditingController();
                TextEditingController subtype = TextEditingController();
                return AlertDialog(
                  title: const Text("Add Habit"),
                  content: Column(mainAxisSize: MainAxisSize.min, children: [
                    TextField(
                      controller: type,
                      decoration:
                          const InputDecoration(hintText: "Habit Topic"),
                    ),
                    TextField(
                      controller: subtype,
                      decoration: const InputDecoration(
                          hintText: "Habit Topic Description"),
                    )
                  ]),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("CANCLE")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            addhabit(type.text, subtype.text);
                          });

                          Navigator.pop(context);
                        },
                        child: const Text("ADD"))
                  ],
                );
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
