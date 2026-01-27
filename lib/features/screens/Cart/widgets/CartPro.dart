import 'package:flutter/material.dart';
import 'package:nectar_grocery/core/constants/AppColors.dart';
import 'package:nectar_grocery/features/widgets/CounterQuantity.dart';

class CartPro extends StatefulWidget {
  final String image;
  final String ProName;
  final String weight;
  final String price;
  final double Space;
  const CartPro({super.key, required this.image, required this.ProName, required this.price, required this.Space, required this.weight});

  @override
  State<CartPro> createState() => _CartProState();
}

class _CartProState extends State<CartPro> {
  @override
  Widget build(BuildContext context) {
    return 
    Row(
      children: [
      SizedBox(width: 20),
      Image.asset(widget.image,width: 70,height: 70,),
      SizedBox(width: 15),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.ProName,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,height: 1)),
          Text(widget.weight,style: TextStyle(fontSize: 13,color: Appcolors.DetailColor)),
          SizedBox(height: 10),
          Counterquantity()
        ],
      ),
      SizedBox(width:widget.Space),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(Icons.close,color:  Appcolors.DetailColor),
          SizedBox(height: 60),
          Text('\$'+widget.price,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
        ],
      )
      ],
    );
  }
}