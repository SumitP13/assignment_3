// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assignment_3/helper/constant.dart';
import 'package:assignment_3/screen/info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = '', email = '', prn = '';

  int isMale = 1;
  int isFemale = 0;

  setSelectedRadio(value) {
    setState(() {
      isMale = value;
      isFemale = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment 3',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black87),),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      name = value.toString();
                    });
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  decoration: kTextFormFieldDec.copyWith(
                    prefixIcon: Icon(Icons.person,color: Colors.black45,),
                    hintText: 'Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      email = value.toString();
                    });
                  },
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: kTextFormFieldDec.copyWith(
                    prefixIcon: Icon(Icons.email,color: Colors.black45,),
                    hintText: 'Email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      prn = value.toString();
                    });
                  },
                  textInputAction: TextInputAction.done,
                  decoration: kTextFormFieldDec.copyWith(
                    prefixIcon: Icon(Icons.shield,color: Colors.black45,),
                    hintText: 'PRN',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text('Choose your Gender',
              style: TextStyle(fontSize: 17.0),),

              Row(
                children: [
                  Radio(
                    value: 1,
                    activeColor: Colors.pinkAccent,
                    onChanged: (value) {
                      setState(() {
                        setSelectedRadio(value);
                      });
                    },
                    groupValue: isMale,
                  ),
                  Text('Male',style: TextStyle(fontSize: 18.0),),
                  Radio(
                    value: 2,
                    activeColor: Colors.pinkAccent,
                    groupValue: isFemale,
                    onChanged: (value) {
                      setSelectedRadio(value);
                    },
                  ),
                  Text('Female',style: TextStyle(fontSize: 18.0),),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InfoScreen(
                          name: name,
                          email: email,
                          prn: prn,
                          isMale: isMale,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    height: 45,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
