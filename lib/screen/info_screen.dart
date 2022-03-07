// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({
    Key? key,
    required this.name,
    required this.email,
    required this.prn,
    required this.isMale,
  }) : super(key: key);

  final String name, email, prn;
  final int isMale;

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    String gender = 'Male';
    if (widget.isMale == 0) {
      setState(() {
        gender = 'Female';
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Your Details',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 21.0),),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome, Flutter  Developer.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name'':- ${widget.name}',
                    style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Email:- ${widget.email}',
                    style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'PRN:- ${widget.prn}',
                    style: TextStyle(color: Colors.black, fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Gender:- $gender',
                    style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
