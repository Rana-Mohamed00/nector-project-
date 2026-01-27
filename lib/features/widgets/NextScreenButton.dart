import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  String text_in;
  double w,h;
  Widget nextpage;
  Button({super.key,required this.text_in,required this.h,required this.w,required this.nextpage});

  @override
  Widget build(BuildContext context) {
    return  
      Row(
         children: [

          SizedBox(width: 30),

          SizedBox(
            width:w,
            height:h,

            child: 
              ElevatedButton(

                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> nextpage));
                },


                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 23, 208, 116),
                  shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10))),
                  child: Text(text_in,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white))
    
                )
          )
      ],
    );
  }
}