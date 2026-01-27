import 'package:flutter/material.dart';
import 'package:nectar_grocery/features/screens/onBording/onbordingView.dart';

class start extends StatefulWidget {
  start({super.key});
  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  //String text="Get Started";
    void initState(){

    super.initState();
     Future.delayed(Duration(seconds: 3),(){
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


            Row(
              children: [
                SizedBox(width: 90),
                Image.asset("assests/images/carrot.png",width: 50,height: 50),
                Text("nectar",style: TextStyle(fontSize: 70,color: Colors.white,height: 0.8))
              ],
            ),


            Text("         o n l i n e   g r o c e r i e t",style: TextStyle(fontSize: 15,color: Colors.white))


          ],
        
      )

    );
  }
}