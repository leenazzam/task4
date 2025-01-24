// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String email = " ";
  String pass = " ";
  bool valid = false;
  @override
  Widget build(BuildContext context) {
    TextEditingController emailfiled = new TextEditingController();
    TextEditingController passwordfiled = new TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          "Login",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notification_add,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              )),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: emailfiled,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: " Email ",
                    hintText: " write your email..."),
              ),
            ),
            Text("YOUR EMAIL IS : $email"),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: passwordfiled,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: " Password ",
                    hintText: " write your Password..."),
              ),
            ),
            Text("YOUR PASSWORD IS : $pass"),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    pass = passwordfiled.text;
                    email = emailfiled.text;
                    if (email == "tariq@gmail.com" && pass == "112233") {
                      valid = true;
                    }
                  });
                },
                child: Text("Click")),
            SizedBox(
              height: 40,
            ),
            Text(valid ? " WELCOME !! " : " INVAID DATA !! ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: valid ? Colors.green : Colors.red,
                ))
          ],
        ),
      ),
    );
  }
}
