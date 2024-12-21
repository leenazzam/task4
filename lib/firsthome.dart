import 'package:flutter/material.dart';

class Firsthome extends StatelessWidget {
  const Firsthome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 140, 207, 238),
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text(
          "Task4",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.indigo),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notification_add,
                color: Colors.lime,
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "HelloWorld",
              style: TextStyle(
                fontFamily: AutofillHints.creditCardExpirationMonth,
                color: Colors.cyanAccent,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Leen Azzam",
                style: TextStyle(
                  fontFamily: AutofillHints.creditCardExpirationMonth,
                  color: Colors.indigoAccent,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                )),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.access_alarm_sharp,
                  color: Colors.green,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
