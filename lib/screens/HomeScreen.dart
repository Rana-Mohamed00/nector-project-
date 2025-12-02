import 'package:flutter/material.dart';
import 'package:nectar_grocery/screens/Explore.dart';
import 'package:nectar_grocery/screens/log_in.dart';
import 'package:nectar_grocery/screens/onbording.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController product=TextEditingController();
  //String path_image,pro_name,weight,price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //backgroundColor: Colors.white,
        title:Padding(
          padding: EdgeInsets.all(16),
          child:Column(
          children: [
            Row(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 160),
           Container(
            width: 30,
            height: 30,
            child: Image.asset("assests/images/carrot_orange.png"),
           ),
        ],
        ),
        Row(
          children: [
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
            Image.asset("assests/images/banner.png"),
            SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Exclusive Offer",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                SizedBox(width: 175),
                Text("See all",style: TextStyle(color:Color.fromARGB(255, 23, 208, 116)))
              ]
            ),
            SizedBox(height: 15),
             SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                 Product(path_image: "assests/images/bananaa.jpg", pro_name:"Organic Bananas", weight:"7pcs, Priceg", price:"\$4.99"),
                 SizedBox(width: 5),
                 Product(path_image: "assests/images/Apple.png", pro_name:"Red Apple", weight:"1kg, Priceg", price:"\$4.99"),
                 SizedBox(width: 5),
                  Product(path_image: "assests/images/orange_fruit.jpg", pro_name:"Fresh Orange", weight:"1kg, Priceg", price:"\$5.99"),
                ],
              ),
             ),
              SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Best Selling",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                SizedBox(width: 175),
                Text("See all",style: TextStyle(color:Color.fromARGB(255, 23, 208, 116)))
              ]
            ),
            SizedBox(height: 15),
             SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                 Product(path_image: "assests/images/red pepper.jpg", pro_name:"Bell Pepper Red", weight:"1kg, Priceg", price:"\$4.99"),
                 SizedBox(width: 5),
                 Product(path_image: "assests/images/ginger.jpg", pro_name:"Ginger", weight:"250gm, Priceg", price:"\$6.99"),
                 SizedBox(width: 5),
                  Product(path_image: "assests/images/watercress.jpg", pro_name:"Watercress", weight:"100gm, Priceg", price:"\$5.99"),
                ],
              ),
             )
          ],
        ),
        )
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
          Icon_navigate(icon_bottom: Icons.shopping_cart_outlined , name_icon: "Cart",nextpage: Homescreen()),//TODO
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
class Product extends StatelessWidget {
   final String path_image,pro_name,weight,price;
   Product({super.key,required this.path_image,required this.pro_name, required this.weight, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(5), 
                  child:
                    Container(
                    width: 150,
                    height: 200,
                    alignment:Alignment.center,
                    decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 251, 251),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all( color: Colors.grey,width: 2)
                    ),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Image.asset(path_image,width: 90,height: 90),
                        //SizedBox(height: 5),
                        Text(pro_name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,height: 0.8)),
                        Text(weight,style:TextStyle(color:Colors.grey,fontSize: 12)),
                        SizedBox(height: 5),
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            Text(price),
                            SizedBox(width: 50),
                            
                            Container(
                              //alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(color: Color.fromARGB(255, 23, 208, 116),
                              borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Text("+",style: TextStyle(color: Colors.white,fontSize: 20)),
                              )
                            )
                          ],
                        )

                      ],
                    ),
                  ) 
                  );
  }
}


class Icon_navigate extends StatelessWidget {
  final IconData icon_bottom;
  final String name_icon;
  final Widget nextpage;

  const Icon_navigate({
    super.key,
    required this.icon_bottom,
    required this.name_icon,
    required this.nextpage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextpage),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon_bottom,
            color: Colors.black,
            size: 40,
          ),
          SizedBox(height: 5),
          Text(
            name_icon,
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
