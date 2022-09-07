// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final _nameController = TextEditingController();
  final _jobTitleController = TextEditingController();
  @override
  void dispose() {
    _nameController.dispose();
    _jobTitleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal.shade300,
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //name textfield
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                    label: Text('Name'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),

            //job textfield
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _jobTitleController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white30,
                    prefixIcon: Icon(Icons.work),
                    label: Text('Job'),
                    labelStyle: TextStyle(color: Colors.white),
                   
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.white))),
              ),
            ),

            //phone number textfield
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _jobTitleController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone_iphone),
                    label: Text('Phone Number'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),

            //email textfield

            //submit button
          ],
        )),
      ),
    );
  }
}
