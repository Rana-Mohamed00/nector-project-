import 'package:flutter/material.dart';
import 'package:nectar_grocery/features/widgets/CustomTextField.dart';
import 'package:nectar_grocery/features/widgets/NextScreenButton.dart';
import 'package:nectar_grocery/features/widgets/passwordTextField.dart';
import 'package:nectar_grocery/features/screens/signUp/SignUpView.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  
  TextEditingController email =TextEditingController();
  TextEditingController password=TextEditingController();

  @override
  Widget build(BuildContext context) {
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
          Text("Loging",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          Text("Enter your emails and password"),
          SizedBox(height: 40),
          Text("Email"),
          CustomTextField(UserInput: email, HintMessage: "Please Enter Your Email"),
          SizedBox(height: 25),
          Text("Password"),
          password_widgetState(),
          SizedBox(height: 10),
           Row(
            children: [
              SizedBox(width: 250),
              Text("Forgot Password?")
            ],
           ),
           SizedBox(height: 30),
           Button(text_in: "Log In",h: 50,w:340,nextpage: Signup()),
           SizedBox(height: 15),
           Row(
            children: [
              SizedBox(width: 80),
              Text("Don't have an account?",style: TextStyle(color: Colors.black)),
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
