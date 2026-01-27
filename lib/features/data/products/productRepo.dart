import 'package:nectar_grocery/core/network/apiService.dart';
import 'package:nectar_grocery/features/data/products/productModel.dart';

class ProductRepo{

  ApiService apiService = ApiService();

  Future<List<ProductModel>> getAllProducts() async {
  final response = await apiService.get('/products/category/groceries');

  List data = response['products'];

  return data.map((e) => ProductModel.fromJson(e)).toList();
  }
}