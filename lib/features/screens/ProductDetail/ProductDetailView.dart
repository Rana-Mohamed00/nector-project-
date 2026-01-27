import 'package:flutter/material.dart';
import 'package:nectar_grocery/core/constants/AppColors.dart';
import 'package:nectar_grocery/features/widgets/CounterQuantity.dart';

class Productdetailview extends StatefulWidget {
  const Productdetailview({super.key});

  @override
  State<Productdetailview> createState() => _ProViewState();
}

class _ProViewState extends State<Productdetailview> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
      Padding(
        padding:EdgeInsets.all(15),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assests/images/Apple.png',width: 350,height: 300),
            Row(
              children: [
                SizedBox(width: 20),
                Text('Naturel Red Apple',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, height:0.8 )),
                SizedBox(width: 150),
                Icon(Icons.favorite_border_outlined,color: Appcolors.DetailColor)
              ],
            ),
           

            Row(
              children: [
                SizedBox(width: 20),
                Text('1kg, price',style: TextStyle(fontSize: 18,color: Appcolors.DetailColor))
              ],
            ),
            
            SizedBox(height: 20),
            Row(
              children: [
                Counterquantity(),
                SizedBox(width: 130),
                Text("\$4.99",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(height: 30),

            Container(width: 350,height: 2,color: Appcolors.LineColor),

            Row(
              children: [
                SizedBox(width: 20),
                Text('Product Detail',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                SizedBox(width: 190),
                Text('>',style: TextStyle(fontSize: 30)),
              ]
            ),

            Container(width: 350,height: 2,color: Appcolors.LineColor),

            Row(
              children: [
                SizedBox(width: 20),
                Text('Nutritions',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                SizedBox(width: 230),
                Text('>',style: TextStyle(fontSize: 30)),
              ]
            ),

            Container(width: 350,height: 2,color: Appcolors.LineColor),

            Row(
              children: [
                SizedBox(width: 20),
                Text('Review',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                SizedBox(width: 150),
                Text('⭐⭐⭐⭐⭐'),
                SizedBox(width: 15),
                Text('>',style: TextStyle(fontSize: 30)),
              ]
            ),

          ],
        )
      ),
    );
  }
}