// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mi_card/ScreenData.dart';

class JobCard extends StatelessWidget {
  static const id = 'JobCard_page';
  const JobCard({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    var ScreenData = ModalRoute.of(context)!.settings.arguments as JobArguments;
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('lib/images/girl.jpg'),
              ),
              Text(
                ScreenData.name,
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Text(
                ScreenData.jobTitle,
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20,
                  letterSpacing: 2.5,
                  color: Colors.white,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    ScreenData.phoneNumber,
                    style: TextStyle(
                      color: Colors.teal,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    ScreenData.email,
                    style: TextStyle(
                      color: Colors.teal,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}