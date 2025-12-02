import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar_grocery/screens/log_in.dart';
import 'package:nectar_grocery/screens/onbording.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter:dart';
class start extends StatefulWidget {
  start({super.key});
  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  //String text="Get Started";
    void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 6),(){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Onbording()));
   });
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      //debugShowCheckedModeBanner:false,
      backgroundColor: const Color.fromARGB(255, 23, 208, 116),
      body:
        Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SizedBox(height: 250),
            Row(
              children: [
                SizedBox(width: 90),
                Image.asset("assests/images/carrot.png",width: 50,height: 50),
                //SizedBox(width: 20),
                Text("nectar",style: TextStyle(fontSize: 70,color: Colors.white,height: 0.8))
              ],
            ),
            Text("         o n l i n e   g r o c e r i e t",style: TextStyle(fontSize: 15,color: Colors.white))
            //Button(text_in:"Get Started",h:50,w:350,)
          ],
        
      )

    );
  }
}

class Button extends StatelessWidget {
  String text_in;
  double w,h;
  Widget nextpage;
  Button({super.key,required this.text_in,required this.h,required this.w,required this.nextpage});

  @override
  Widget build(BuildContext context) {
    return  Row(
                children: [
                  SizedBox(width: 30),

                  SizedBox(
                    width:w,
                    height:h,
                     child: ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> nextpage));
                     },style: ElevatedButton.styleFrom(
                   backgroundColor: Color.fromARGB(255, 23, 208, 116),
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
                  child: Text(text_in,style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)
                  ),
                 )
                )
                ],
              );
  }
}