import 'package:flutter/material.dart';

class MyAlertBox extends StatelessWidget {
  final dynamic controller;
  final String hintText;
  final VoidCallback onSave;
  final VoidCallback onCancel;


  const MyAlertBox({
    super.key, 
    required this.controller, 
    required this.hintText, 
    required this.onSave, 
    required this.onCancel, 
  });


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[900],
      content: TextField(
        controller: controller,
        style: TextStyle(color: Colors.white,),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white,),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white,),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white,), 
          ),

        ),
      ),
      actions: [
        MaterialButton(
          child: Text(
            "Save",
            style: TextStyle(color: Colors.white,),
          ),
          onPressed: onSave,
          color: Colors.black,
        ),
        MaterialButton(
          child: Text(
            "Cancel",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.black,
          onPressed: onCancel,
        ),
      ],
    );
  }
}