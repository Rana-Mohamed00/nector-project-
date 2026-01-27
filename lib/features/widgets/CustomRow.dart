import 'package:flutter/material.dart';

class CustomRow extends StatefulWidget {
  final IconData customIcon;
  final String txt;
  final double space; 
  const CustomRow({super.key, required this.customIcon, required this.txt, required this.space});
  
  @override
  State<CustomRow> createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
  @override
  Widget build(BuildContext context) {
    return 
    Row(
      children: [
        SizedBox(width: 40),
        Icon(widget.customIcon, color: Colors.black),
        SizedBox(width: 10),
        Text(widget.txt,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
        SizedBox(width: widget.space),
        Icon(Icons.chevron_right_outlined)
       
        ]
    );
  }
}