import 'package:flutter/material.dart';

const kTextFormFieldDec = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.green, width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.redAccent, width: 2),
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent),
  ),
);
