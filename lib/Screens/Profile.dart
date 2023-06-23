// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Center(
            child: CircleAvatar(
              backgroundColor: Colors.deepPurple,
              radius: 160,
              child: Image.asset("lib/Images/pngegg.png"),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Hey Hermano!!",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "What A Nice Day",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]),
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            const ListTile(
              leading: Icon(Icons.person),
              title: Text("My Account Info"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.payment),
              title: Text("My Subscription Info"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.list),
              title: Text("All Of My Habits"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.info),
              title: Text("About This App"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                },
                child: const Text(
                  "Logout",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.red),
                ))
          ],
        )
      ]),
    );
  }
}
