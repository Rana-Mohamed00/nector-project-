import 'package:flutter/material.dart';
import 'package:nectar_grocery/screens/HomeScreen.dart';
import 'package:nectar_grocery/screens/log_in.dart';
import 'package:nectar_grocery/screens/start.dart';

class Signup extends StatefulWidget {
   Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  
  @override
  Widget build(BuildContext context) {
    //String HintMessage;
    TextEditingController ppassword=TextEditingController();
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
          InputBox(UserInput: username , HintMessage: "Please Enter Your Username"),
          SizedBox(height: 25),
          Text("Password"),
          _password_widgetState(),
          SizedBox(height: 10),
           Row(
            children: [
              //SizedBox(width: 250),
              Text("By continuing you agree to our Terms of Service\n and Privacy Policy.")
            ],
           ),
           SizedBox(height: 40),
           Button(text_in: "Sign Up",h: 50,w:340,nextpage: Homescreen()),
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

class _password_widgetState extends StatefulWidget {
   _password_widgetState({super.key});

  @override
  State<_password_widgetState> createState() => _password_widgetStateState();
}

class _password_widgetStateState extends State<_password_widgetState> {
  bool IsHidden =true;
   TextEditingController? ppassword;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: ppassword,
      obscureText: IsHidden,
      decoration: InputDecoration(
        hint: Text("Please Enter Your Password",style: TextStyle(color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color:Color.fromARGB(255, 23, 208, 116))
        ),
        suffix: IconButton(
          icon: Icon(IsHidden ? Icons.visibility_off : Icons.visibility),
          onPressed:(){
            setState(() {
              IsHidden = !IsHidden;
            });
          } 
          )
      ),
      cursorColor: Color.fromARGB(255, 23, 208, 116),
    );
  }
}