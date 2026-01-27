import 'package:flutter/material.dart';
import 'package:nectar_grocery/core/constants/AppColors.dart';
import 'package:nectar_grocery/features/screens/Cart/CartView.dart';
import 'package:nectar_grocery/features/widgets/NextScreenButton.dart';
import 'package:nectar_grocery/features/screens/Favourite/Favouritepro.dart';

class FavouriteView extends StatefulWidget {
  const FavouriteView({super.key});

  @override
  State<FavouriteView> createState() => _FavouriteViewState();
}

class _FavouriteViewState extends State<FavouriteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
      Column(
        children: [

          SizedBox(height: 70),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Favourite',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
              ],
            ),
          
          SizedBox(height: 20),
          Container(width: 400,height: 2,color: Appcolors.LineColor),

          SizedBox(height: 30),
          Favouritepro(image: 'assests/Favouritepro/Sprite.png', ProName: 'Sprite Can', Size: '325ml', price: '1.50', Space: 120),
          SizedBox(height: 20),
          Container(width: 370,height: 2,color: Appcolors.LineColor),

          SizedBox(height: 30),
          Favouritepro(image: 'assests/Favouritepro/coke.png', ProName: 'Diet Coke', Size: '355ml', price: '1.99', Space: 120),
          SizedBox(height: 20),
          Container(width: 370,height: 2,color: Appcolors.LineColor),

          SizedBox(height: 30),
          Favouritepro(image: 'assests/Favouritepro/juice.png', ProName: 'Apple & Grape Juice', Size: '2L', price: '15.50', Space: 35),
          SizedBox(height: 20),
          Container(width: 370,height: 2,color: Appcolors.LineColor),

          SizedBox(height: 30),
          Favouritepro(image: 'assests/Favouritepro/cocacola.png', ProName: 'Coca Cola Can', Size: '325ml', price: '4.99', Space: 85),
          SizedBox(height: 20),
          Container(width: 370,height: 2,color: Appcolors.LineColor),

          SizedBox(height: 30),
          Favouritepro(image: 'assests/Favouritepro/pepsi.png', ProName: 'Pepsi Can', Size: '330ml', price: '4.99', Space: 115),
          SizedBox(height: 20),
          Container(width: 370,height: 2,color: Appcolors.LineColor),
          SizedBox(height: 30),
          Button(text_in: 'Add All To Cart', h: 60, w: 350, nextpage: CartView())
        ]
      ),
    );
  }
}