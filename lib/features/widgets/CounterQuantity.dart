import 'package:flutter/material.dart';
import 'package:nectar_grocery/core/constants/AppColors.dart';

class Counterquantity extends StatefulWidget {
  const Counterquantity({super.key});

  @override
  State<Counterquantity> createState() => _CounterquantityState();
}

class _CounterquantityState extends State<Counterquantity> {
  int counter=0;

  void increment(){
    setState(() {
      counter++;
    });
  }

  void decrement(){
    setState(() {
      if( counter ==0){
        counter=0;
      }else{
        counter--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return 
     Row(
       children: [
        SizedBox(width: 20),
        GestureDetector(
          onTap: () => decrement(),
          child: Text('-',style: TextStyle(fontSize: 50,color:Appcolors.LineColor)),
        ),
        SizedBox(width: 15),
        Container(
        decoration: BoxDecoration(
         color: Colors.white,
         borderRadius:BorderRadius.circular(15),
         border: Border.all(
                color: Color(0xffE2E2E2),
                width: 1
          )
         ),
        height: 50,
        width: 50,
        child:Center(child: Text(counter.toString(),style: TextStyle(fontSize: 30)))
        ),
        SizedBox(width: 20),

        GestureDetector(
          onTap: () => increment(),
          child: Text('+',style: TextStyle(fontSize: 40,color:Appcolors.PrimaryColor)),
        )
       ]
     );
  }
}