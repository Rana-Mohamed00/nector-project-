import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nectar_grocery/features/data/products/ProductStates.dart';
import 'package:nectar_grocery/features/data/products/productModel.dart';
import 'package:nectar_grocery/features/data/products/productRepo.dart';

class Productcubit extends Cubit<ProductStates> {
  Productcubit(): super(InitialState());

  List<ProductModel> products=[];

  dynamic getProducts() async{
    try{
    emit(LoadingState());
    await Future.delayed(Duration(seconds: 2));
    products = await ProductRepo().getAllProducts();
    emit(ProductLoaded(products: products));
    }
    catch(e){
      emit(ErrorState());
    }
  }

}