// ignore_for_file: prefer_const_constructors

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:mi_card/ScreenData.dart';
import 'package:mi_card/job_card.dart';

class DetailsPage extends StatefulWidget {
  static const id = 'details_page';
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final _nameController = TextEditingController();
  final _jobTitleController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final _emailController = TextEditingController();
  @override
  void dispose() {
    _nameController.dispose();
    _jobTitleController.dispose();
    _mobileNumberController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void submitButton() {
    if (_nameController.text.isEmpty &&
        _jobTitleController.text.isEmpty &&
        _mobileNumberController.text.isEmpty &&
        _emailController.text.isEmpty) {
      showOkAlertDialog(
        context: context,
        title: '⚠️',
        message: 'One or more fields is empty. Kindly confirm',
        
        style: AdaptiveStyle.iOS,
      );
      
    } else {
      Navigator.pushNamed(context, JobCard.id,
          arguments: JobArguments(
              _nameController.text,
              _jobTitleController.text,
              _mobileNumberController.text,
              _emailController.text));
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
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
                    prefixIcon: Icon(Icons.person),
                    // label: Text('Name'),
                    hintText: 'Name',
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
                    prefixIcon: Icon(Icons.work),
                    label: Text('Job'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(color: Colors.white))),
              ),
            ),

            //phone number textfield
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: _mobileNumberController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    label: Text('Phone Number'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),

            //email textfield
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    label: Text('Email'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            //submit button
            ElevatedButton(onPressed: submitButton, child: Text('Submit'))
          ],
        )),
      ),
    );
  }
}
