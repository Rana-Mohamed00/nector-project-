import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Product extends StatelessWidget {
   final String pro_name,weight;
   // ignore: non_constant_identifier_names
   final List<String> path_image;
   double price;
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
                    child: 
                    Column(
                      children: [

                        SizedBox(height: 2),

                        Image.network(path_image[0],width: 90,height: 90),
                        Text(pro_name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,height: 0.5)),
                        Padding(padding: EdgeInsets.all(8),child: Text(weight,style:TextStyle(color:Colors.grey,fontSize: 12))),
                        Spacer(),
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10),
                            Text(price.toString()),
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