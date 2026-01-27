import 'package:flutter/material.dart';

class password_widgetState extends StatefulWidget {
   password_widgetState({super.key});

  @override
  State<password_widgetState> createState() => password_widgetStateState();
}

class password_widgetStateState extends State<password_widgetState> {
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