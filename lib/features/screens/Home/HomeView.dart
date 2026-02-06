import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar_grocery/core/constants/AppColors.dart';
import 'package:nectar_grocery/features/data/products/ProductCubit.dart';
import 'package:nectar_grocery/features/data/products/ProductStates.dart';
import 'package:nectar_grocery/features/screens/Home/HomeBody.dart';
import 'package:nectar_grocery/features/widgets/CustomProduct.dart';
import 'package:nectar_grocery/features/screens/ProductDetail/ProductDetailView.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: 
      AppBar(
        title:Padding(padding:EdgeInsets.all(16),
              child:
                Column(
                   children: [
                    Row(
                      children: [
                      SizedBox(width: 160),

                      Container(
                         width: 30,
                         height: 30,
                         child: Image.asset("assests/images/carrot_orange.png"),
                      ),
                     ],
                    ),

                    Row(children: [
                      SizedBox(width: 90),
                      Icon(Icons.location_on,color: Colors.black87),
                      Text("Dhaka, Banassre",style: TextStyle(fontSize: 20)),
                     ],
                    ),
       

                   ],
                )
             )
           ),
      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: 
        Padding(
        padding: EdgeInsets.all(16),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 251, 251),
                borderRadius: BorderRadius.circular(20)
              ),
              child:   TextFormField(
               //controller: product,
               decoration: InputDecoration(
              
               hint: Text("Search Store",style: TextStyle(color: Colors.grey)),
               focusedBorder: OutlineInputBorder(
               borderSide: BorderSide(color:Color.fromARGB(255, 23, 208, 116),width: 2)
              ),
              prefixIcon: Icon(Icons.search),
              ),
            
            cursorColor: Color.fromARGB(255, 23, 208, 116),
          ),
          ),
            SizedBox(height: 15),
            Image.asset("assests/images/banner.png"),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Exclusive Offer",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                SizedBox(width: 175),
                Text("See all",style: TextStyle(color:Color.fromARGB(255, 23, 208, 116)))
              ]
            ),
            SizedBox(height: 10),
            HomeBody()
          ],
        ),
        )
      )
    );
  }
}