// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController UserInput;
  IconData? icon;
  String HintMessage;
  CustomTextField({super.key, required this.UserInput,required this.HintMessage,this.icon});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
            controller: UserInput,
            decoration: InputDecoration(
              hint: Text(HintMessage,style: TextStyle(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color:Color.fromARGB(255, 23, 208, 116),width: 2)
              ),
              prefix: Icon(icon),
              ),
            
            cursorColor: Color.fromARGB(255, 23, 208, 116),
          );
  }
}