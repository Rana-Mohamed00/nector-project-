import 'package:flutter/material.dart';
import 'package:nectar_grocery/screens/SignUp.dart';
import 'package:nectar_grocery/screens/start.dart';

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
          InputBox(UserInput: email, HintMessage: "Please Enter Your Email"),
          SizedBox(height: 25),
          Text("Password"),
          _password_widgetState(),
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
/* $$$$$$$ Box of Email $$$$$$$$$4 */
class InputBox extends StatelessWidget {
  TextEditingController UserInput;
  IconData? icon;
  String HintMessage;
  InputBox({super.key, required this.UserInput,required this.HintMessage,this.icon});
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

/* $$$$$$$ Box of password $$$$$$$$$4 */
class _password_widgetState extends StatefulWidget {
   _password_widgetState({super.key});

  @override
  State<_password_widgetState> createState() => __password_widgetStateState();
}

class __password_widgetStateState extends State<_password_widgetState> {
  bool IsHidden =true;
   TextEditingController? password;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: password,
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