import 'package:flutter/material.dart';
import 'package:nectar_grocery/core/constants/AppColors.dart';
import 'package:nectar_grocery/features/widgets/CustomRow.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
      Column(
          children: [

            SizedBox(height: 70),

            Row(
              children: [
                SizedBox(width: 30),
                Image.asset('assests/images/profile.png'),
                SizedBox(width: 20),
                Text("Afsar Hossen",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10)),
                Icon(Icons.edit,color: Appcolors.PrimaryColor),
                Text("ranamohamed@gmail.com", style:TextStyle(color: Appcolors.DetailColor))
              ]
            ),
            
            SizedBox(height: 30),
            Container(width: 400,height: 2,color: Appcolors.LineColor),
            
            SizedBox(height: 10),
            CustomRow(customIcon: Icons.shopping_bag_outlined, txt: 'Orders', space: 230),
            SizedBox(height: 10),

            Container(width: 370,height: 2,color: Appcolors.LineColor),
            SizedBox(height: 10),
            CustomRow(customIcon: Icons.badge_outlined, txt: 'My Details', space: 195),
            SizedBox(height: 10),

            Container(width: 370,height: 2,color: Appcolors.LineColor),
            SizedBox(height: 10),
            CustomRow(customIcon: Icons.location_on_outlined, txt: 'Delivery Address', space: 135),
            SizedBox(height: 10),

            Container(width: 370,height: 2,color: Appcolors.LineColor),
            SizedBox(height: 10),
            CustomRow(customIcon: Icons.credit_card_outlined, txt: 'Payment Methods', space: 125),
            SizedBox(height: 10),

            Container(width: 370,height: 2,color: Appcolors.LineColor),
            SizedBox(height: 10),
            CustomRow(customIcon: Icons.confirmation_num_outlined, txt: 'Promo Cord', space: 180),
            SizedBox(height: 10),

            Container(width: 370,height: 2,color: Appcolors.LineColor),
            SizedBox(height: 10),
            CustomRow(customIcon: Icons.notifications_outlined, txt: 'Notifecations', space: 165),
            SizedBox(height: 10),

            Container(width: 370,height: 2,color: Appcolors.LineColor),
            SizedBox(height: 10),
            CustomRow(customIcon: Icons.help_outline, txt: 'Help', space: 245),
            SizedBox(height: 10),

            Container(width: 370,height: 2,color: Appcolors.LineColor),
            SizedBox(height: 10),
            CustomRow(customIcon: Icons.error_outline, txt: 'About', space: 230),
            SizedBox(height: 10),

            Container(width: 370,height: 2,color: Appcolors.LineColor),
            SizedBox(height: 150),

            Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(color: Color(0xffF2F3F2),borderRadius: BorderRadius.circular(15)),
              
              child: 
              Center(
                child: Row(
                  children: [
                    SizedBox(width: 40),
                    Icon(Icons.logout_outlined,color: Appcolors.PrimaryColor),
                    SizedBox(width: 70),
                    Text('Log Out',style: TextStyle(color: Appcolors.PrimaryColor,fontSize: 20,fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            )

          ],
        ),
    );
  }
}