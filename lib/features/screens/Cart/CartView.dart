import 'package:flutter/material.dart';
import 'package:nectar_grocery/core/constants/AppColors.dart';
import 'package:nectar_grocery/features/screens/Cart/widgets/CartPro.dart';
import 'package:nectar_grocery/features/screens/Checkout/CheckoutView.dart';
import 'package:nectar_grocery/features/widgets/NextScreenButton.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
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
                Text('My Cart',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
              ],
            ),
          
          SizedBox(height: 20),
          Container(width: 400,height: 2,color: Appcolors.LineColor),

          SizedBox(height: 30),
          CartPro(image: 'assests/CartImages/peper.png', ProName: 'Bell Pepper Red', price: '4.99', Space: 90, weight: '1kg'),
          SizedBox(height: 5),
          Container(width: 370,height: 2,color: Appcolors.LineColor),

          SizedBox(height: 30),
          CartPro(image: 'assests/CartImages/Egg.png', ProName: 'Egg Chicken Red', price: '1.99', Space: 90, weight: '1pcs'),
          SizedBox(height: 5),
          Container(width: 370,height: 2,color: Appcolors.LineColor),

          SizedBox(height: 30),
          CartPro(image: 'assests/CartImages/Banana.png', ProName: 'Organic Bananas', price: '3.00', Space: 90, weight: '12kg'),
          SizedBox(height: 5),
          Container(width: 370,height: 2,color: Appcolors.LineColor),

          SizedBox(height: 30),
          CartPro(image: 'assests/CartImages/Ginger.png', ProName: 'Ginger', price: '2.99', Space: 90, weight: '250gm'),
          SizedBox(height: 5),
          Container(width: 370,height: 2,color: Appcolors.LineColor),

          Button(text_in: 'Go to Checkout', h: 60, w: 350, nextpage: CheckoutView())
        ],
      ),
    );
  }
}