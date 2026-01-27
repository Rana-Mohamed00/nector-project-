import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Explore_box extends StatelessWidget {
  String path_image, txt;
  Color container_color;
  Color border_color;
   Explore_box({super.key,required this.path_image,required this.txt,required this.border_color, required this.container_color});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: 175,
              height: 190,
              
              alignment:Alignment.center,
                    decoration: BoxDecoration(
                    color: container_color,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all( color:border_color ,width: 2)
                  ),
              child: 
                 Column(
                  children: [
                    Image.asset(path_image,height: 100,width: 270),
                    SizedBox(height: 20),
                    Text(txt,style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              
            );
  }
}