import 'package:flutter/material.dart';
import 'package:nectar_grocery/core/constants/AppColors.dart';
import 'package:nectar_grocery/features/widgets/NextScreenButton.dart';
import 'package:nectar_grocery/features/screens/Home/HomeView.dart';

class Orderacceptedview extends StatelessWidget {
  const Orderacceptedview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 150),
          Image.asset('assests/images/acceptorder.png'),
          SizedBox(height: 50),
          Text('Your Order has been',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
          Center(child:Text('accepted',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold))),
          SizedBox(height: 10),
          Text('Your items has been placcd and is on',style: TextStyle(fontSize: 17,color: Appcolors.DetailColor,height: 1)),
          Center(child: Text('it\'s way to being processed',style: TextStyle(fontSize: 17,color: Appcolors.DetailColor,height: 1))),
          SizedBox(height: 175),
          Button(text_in: 'Track Order', h: 60, w: 350, nextpage: Homescreen()),
          SizedBox(height: 20),
          GestureDetector(
            onTap: ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homescreen())),
            child: Text('Back to home',style: TextStyle(fontWeight: FontWeight.bold))
          )
        ],
      ),
    );
  }
}