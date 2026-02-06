import 'package:nectar_grocery/features/data/products/productModel.dart';

abstract class ProductStates {}
class InitialState extends ProductStates{

}
class LoadingState extends ProductStates{
}
class ProductLoaded extends ProductStates{

  final List<ProductModel> products;
  ProductLoaded({required this.products});
}

class ErrorState extends ProductStates{


}

