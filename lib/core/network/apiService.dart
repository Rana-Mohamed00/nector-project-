import 'package:dio/dio.dart';
import 'package:nectar_grocery/core/network/apiExceptions.dart';
import 'package:nectar_grocery/core/network/dioClient.dart';

class ApiService {


  final DioClient _dioClient = DioClient();

  //get

  Future<dynamic> get(String endPoint) async{
    try{
      final response = await _dioClient.dio.get(endPoint);
      return response.data;
      
    } on DioError catch(e){

      return ApiExceptions.handleError(e);
    }
  }

  /*
  Future<List<ProductModel>> getProducts(String endpoint) async{
  var response =await dioClient.dio.get(endpoint);
  var proModelList = (response.data as List)
  .map((product) => ProductModel.fromJson(product))
  .toList();
  return proModelList;
  
  }
  
  
  */ 

  //post

  Future<dynamic> post(String endPoint,Map<String,dynamic> body) async{
    try{
      final response = await _dioClient.dio.post(endPoint, data: body);
      return response.data;
    }on DioError catch(e){
      return ApiExceptions.handleError(e);
    }
  }

  //put :update

  Future<dynamic> put(String endPoint,Map<String,dynamic> body) async{
    try{
      final response = await _dioClient.dio.put(endPoint,data:body );
      return response.data;
    }on DioError catch(e){
      return ApiExceptions.handleError(e);
    }
  }

  //delete

  Future<dynamic> delete(String endPoint,Map<String,dynamic> body) async{
    try{
      final response = await _dioClient.dio.delete(endPoint,data:body );
      return response.data;
    }on DioError catch(e){
      return ApiExceptions.handleError(e);
    }
  }

}