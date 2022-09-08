// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mi_card/job_card.dart';
import 'package:mi_card/job_details_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      initialRoute: DetailsPage.id,
      routes: {
        DetailsPage.id:(context) => DetailsPage(),
        JobCard.id: (context) => JobCard(),  
       },
      home: DetailsPage()
    );
  }
}
