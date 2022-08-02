import 'package:flutter/material.dart';

class TaskA extends StatelessWidget {
  const TaskA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              width: 100,
            ),
            const SizedBox(
                  width: 25,
                ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 250,
                ),
                Container(
                  color: Colors.yellow.shade100,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.green.shade100,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            const SizedBox(
                  width: 30,
                ),
            Container(
              color: Colors.blue,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
