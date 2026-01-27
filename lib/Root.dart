import 'package:flutter/material.dart';
import 'package:nectar_grocery/core/constants/AppColors.dart';
import 'package:nectar_grocery/features/screens/Account/AccountView.dart';
import 'package:nectar_grocery/features/screens/Cart/CartView.dart';
import 'package:nectar_grocery/features/screens/Explore/ExploreView.dart';
import 'package:nectar_grocery/features/screens/Favourite/FavouriteView.dart';
import 'package:nectar_grocery/features/screens/Home/HomeView.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  late PageController controller;
  int CurrentScreen=0;


  List<Widget> screens =[
    Homescreen(),
    Explore(),
    CartView(),
    FavouriteView(),
    AccountView()
  ];

  void initState() {
    super.initState();
    controller = PageController();
  }

  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (index) {
          setState(() {
            CurrentScreen = index;
          });
        },
        children: screens,
        physics: NeverScrollableScrollPhysics(),
      ),

      bottomNavigationBar: 
      Container(
        decoration: BoxDecoration(color: Colors.white),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Appcolors.PrimaryColor,
          unselectedItemColor: Colors.black,
          currentIndex: CurrentScreen,

          onTap: (index) {
            setState(() {
              CurrentScreen = index;
              controller.jumpToPage(index);
            });
          },

          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront_outlined),
              label: "Shop"
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: "Explore"
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Cart"
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: "Favourite"
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined),
              label: "Account"
            )
          ]
          
        )

      ),
    );
  }
}