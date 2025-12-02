import 'package:flutter/material.dart';
import 'package:nectar_grocery/screens/HomeScreen.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController? product;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Center(
          child: Text("Find Products",style: TextStyle(fontWeight: FontWeight.bold),),
        )
      ),
      body: 
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: 
        Padding(padding: EdgeInsets.all(16),
        child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 251, 251),
                borderRadius: BorderRadius.circular(20)
              ),
              child:   TextFormField(
               controller: product,
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
            //InputBox(UserInput: product, HintMessage: "Search Store",icon: Icons.search),
            SizedBox(height: 15),
            //Padding(padding: EdgeInsets.all(5),
            //child:
            Row(children: [
             Explore_box(path_image: "assests/images/vege.png", txt:"Frash Fruits\n& Vegetable",
             border_color: const Color.fromARGB(255, 146, 226, 146),container_color: const Color.fromARGB(255, 172, 226, 199), )
            ,SizedBox(width: 10),
            Explore_box(path_image: "assests/images/oil.png", txt: "Cooking Oil\n& Ghee",
            border_color:Color.fromARGB(255, 216, 173, 108) ,container_color: const Color.fromARGB(255, 255, 220, 156),)
            ],
            ),SizedBox(height: 10),
            Row(children: [
             Explore_box(path_image: "assests/images/meat.png", txt:"Meat & Fish",
             border_color: const Color.fromARGB(255, 235, 164, 83),container_color: const Color.fromARGB(255, 255, 188, 143),)
            ,SizedBox(width: 10),
            Explore_box(path_image: "assests/images/bakery.png", txt: "Bakery & Snacks",
            border_color: const Color.fromARGB(255, 218, 164, 228),container_color: const Color.fromARGB(255, 216, 178, 222),)
            ],
            )
            ,SizedBox(height: 10),
            Row(children: [
             Explore_box(path_image: "assests/images/milk.png", txt:"Dairy & Eggs",
             border_color: const Color.fromARGB(255, 255, 236, 143),container_color: const Color.fromARGB(255, 255, 253, 196),)
            ,SizedBox(width: 10),
            Explore_box(path_image: "assests/images/water.png", txt: "Beverages",
            border_color: const Color.fromARGB(255, 137, 204, 246),container_color: const Color.fromARGB(255, 158, 190, 225),)
            ],
            ),SizedBox(height: 10),
             Row(children: [
             Explore_box(path_image: "assests/images/vege.png", txt:"Dairy & Eggs",
             border_color: const Color.fromARGB(255, 189, 149, 223),container_color: const Color.fromARGB(255, 235, 179, 247),)
            ,SizedBox(width: 10),
            Explore_box(path_image: "assests/images/water.png", txt: "Beverages",
            border_color: const Color.fromARGB(255, 239, 147, 213),container_color: const Color.fromARGB(255, 196, 155, 197),)
            ],
            )
            //"Frash Fruits\n& Vegetable"  "assests/images/vege.png"
          ],
        ),
      ),
      ),
      bottomNavigationBar:
      Container(
        height: 70,
       child: Row(
        children: [
          SizedBox(width: 40),
          Icon_navigate(icon_bottom: Icons.storefront_outlined, name_icon: "Shop", nextpage: Homescreen()),
           SizedBox(width: 40),
          Icon_navigate(icon_bottom: Icons.search_outlined , name_icon: "Explore",nextpage:Explore()),
           SizedBox(width: 40),
          Icon_navigate(icon_bottom: Icons.shopping_cart_outlined , name_icon: "Cart",nextpage: Homescreen()),
           SizedBox(width: 40),
          Icon_navigate( icon_bottom: Icons.favorite_border_outlined , name_icon: "Favourite",nextpage: Homescreen()),
           SizedBox(width: 40),
          Icon_navigate( icon_bottom: Icons.account_box_outlined , name_icon: "Account",nextpage: Homescreen()),
        ],
      ),
    )
    );
  }
}

class Explore_box extends StatelessWidget {
  String path_image, txt;
  Color container_color;
  Color border_color;
   Explore_box({super.key,required this.path_image,required this.txt,required this.border_color, required this.container_color});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: 175,
              height: 190,
              
              alignment:Alignment.center,
                    decoration: BoxDecoration(
                    color: container_color,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all( color:border_color ,width: 2)
                  ),
              child: 
                 Column(
                  children: [
                    Image.asset(path_image,height: 100,width: 270),
                    SizedBox(height: 20),
                    Text(txt,style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              
            );
  }
}