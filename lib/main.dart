import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar_grocery/features/data/products/ProductCubit.dart';
import 'package:nectar_grocery/features/screens/Splash/SplashView.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Productcubit()..getProducts())
      ], 
      child: 
      MaterialApp(
      debugShowCheckedModeBanner:false,
      home:  start(),
      )
    );
    
  }

}
