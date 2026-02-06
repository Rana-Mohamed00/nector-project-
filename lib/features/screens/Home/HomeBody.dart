import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar_grocery/core/constants/AppColors.dart';
import 'package:nectar_grocery/features/data/products/ProductCubit.dart';
import 'package:nectar_grocery/features/data/products/ProductStates.dart';
import 'package:nectar_grocery/features/screens/ProductDetail/ProductDetailView.dart';
import 'package:nectar_grocery/features/widgets/CustomProduct.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Productcubit,ProductStates>(
      builder: (context,state){
        if(state is LoadingState){
          return Center(
            child: CircularProgressIndicator(
              strokeWidth: 3,
              color: Appcolors.PrimaryColor,
            )
          );
        }else if(state is ProductLoaded){
          return Column(
            children: [
              SizedBox(
              height: 250,
              child: 
               ListView.builder
              (
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                   return GestureDetector(
                    onTap: ()=>
                      Navigator.push(context,MaterialPageRoute(builder:(context) => Productdetailview())),
                    child: Product(
                    path_image: state.products[index].images ,
                    pro_name: state.products[index].title ,
                    weight: state.products[index].description,
                    price: state.products[index].price
                   )
                  );
                },
              ),
              ),
            SizedBox(height: 10),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Best Selling",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                SizedBox(width: 175),
                Text("See all",style: TextStyle(color:Color.fromARGB(255, 23, 208, 116)))
              ]
            ),
            const SizedBox(height: 15),
             SizedBox(
              height: 250,
              child:
              ListView.builder
              (
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (context, index) {
                   return Product(
                    path_image: state.products[index+10].images ,
                    pro_name: state.products[index+10].title ,
                    weight: state.products[index+10].description,
                    price: state.products[index+10].price
                    );
                },
              ),
              ),
            ],
          );
        }else{
          return
          Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
            color: Colors.redAccent.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              'Something went Wrong',
              textAlign: TextAlign.center,
              style: TextStyle(
              color: Colors.red,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              ),
            ),
          ),
        );
        }
      }
    );
  }
}