import 'package:flutter/material.dart';
import 'package:nectar_grocery/core/constants/AppColors.dart';

class Favouritepro extends StatefulWidget {
  final String image;
  final String ProName;
  final String Size;
  final String price;
  final double Space;
  const Favouritepro({super.key, required this.image, required this.ProName, required this.Size, required this.price, required this.Space});

  @override
  State<Favouritepro> createState() => _FavouriteproState();
}

class _FavouriteproState extends State<Favouritepro> {
  @override
  Widget build(BuildContext context) {
    return 
    Row(
      children: [
      SizedBox(width: 20),
      Image.asset(widget.image,width: 60,height: 60,),
      SizedBox(width: 7),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.ProName,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,height: 1)),
          Text(widget.Size,style: TextStyle(fontSize: 13,color: Appcolors.DetailColor)),
        ],
      ),
      SizedBox(width:widget.Space),
      Text('\$'+widget.price,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
      SizedBox(width: 10),
      Icon(Icons.chevron_right_outlined,size: 40)
      ],
    );
  }
}