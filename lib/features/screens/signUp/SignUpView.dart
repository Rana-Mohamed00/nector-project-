import 'package:flutter/material.dart';
import 'package:nectar_grocery/Root.dart';
import 'package:nectar_grocery/features/widgets/CustomTextField.dart';
import 'package:nectar_grocery/features/widgets/NextScreenButton.dart';
import 'package:nectar_grocery/features/widgets/passwordTextField.dart';

class Signup extends StatefulWidget {
   const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  
  @override
  Widget build(BuildContext context) {
    //TextEditingController ppassword=TextEditingController();
    TextEditingController username = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white
      ,body: SingleChildScrollView(
        child: Padding(
        padding: EdgeInsets.all(16),
        child:  
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [  
          SizedBox(height: 100),
          Row(
          children: [
          SizedBox(width: 170),
          Image.asset("assests/images/carrot_orange.png"),
          ]
          ), 
          SizedBox(height: 90),
          Text("Sign Up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          Text("Enter your credentials to continue"),
          SizedBox(height: 40),
          Text("Username"),
          CustomTextField(UserInput: username , HintMessage: "Please Enter Your Username"),
          SizedBox(height: 25),
          Text("Password"),
          password_widgetState(),
          SizedBox(height: 10),
           Row(
            children: [
              Text("By continuing you agree to our Terms of Service\n and Privacy Policy.")
            ],
           ),
           SizedBox(height: 40),
           Button(text_in: "Sign Up",h: 50,w:340,nextpage: Root()),
           SizedBox(height: 15),
           Row(
            children: [
              SizedBox(width: 80),
              Text("Already have an account?",style: TextStyle(color: Colors.black)),
              Text("Signup",style: TextStyle(color: const Color.fromARGB(255, 23, 208, 116)))
            ],
           )



        ],
      )
      ),
      )
      
      
    );
  }
}