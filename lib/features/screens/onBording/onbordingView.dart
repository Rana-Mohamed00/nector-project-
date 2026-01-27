import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nectar_grocery/features/widgets/NextScreenButton.dart';
import 'package:nectar_grocery/features/screens/Login/loginView.dart';


class Onbording extends StatelessWidget {
  const Onbording({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Positioned.fill(child: 
          Image.asset("assests/images/onbording.png",fit: BoxFit.fill)),
          Column(
            children: [
              SizedBox(height: 480),
              Row(
                children: [
                  SizedBox(width: 190),
                  Image.asset("assests/images/carrot.png"),
                ],
              ),
              SizedBox(height: 20),
              Row(children: [
                SizedBox(width: 100),
                Text("Welcome",
                style: GoogleFonts.lato(
                textStyle: TextStyle(color: Colors.white,fontSize:50,fontWeight: FontWeight.w600,height: 0.8 ))),
              ],
              ),SizedBox(height: 15),
              Row(
                children: [
                  SizedBox(width: 80),
                  Text("to our store",
                  style: GoogleFonts.lato(
                  textStyle: TextStyle(color: Colors.white,fontSize:50,fontWeight: FontWeight.w600,height:0.8 )))]
              ),SizedBox(height: 10),
              Row(
                
                children: [
                  SizedBox(width: 60),
                  Text("Get your groceries in as fast as one hour",
                  style: TextStyle(color: const Color.fromARGB(255, 225, 220, 220),fontSize: 15))]
              ),SizedBox(height: 30),
             Button(text_in: "Get Started", h: 50, w: 350,nextpage:LogIn())
            ],
          ),
          
          
        ],
      )

    );
  }
}