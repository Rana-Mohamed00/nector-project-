import 'package:dio/dio.dart';
import 'package:nectar_grocery/core/network/apiError.dart';

class ApiExceptions {

  // ignore: deprecated_member_use
  static ApiError handleError(DioError error){

    switch(error.type){
      case DioErrorType.connectionTimeout :
        return ApiError(message: "BadConnection");

      case DioErrorType.badResponse:
        return ApiError(message: error.toString());
      default: 
        return ApiError(message: "Something went wrong");
    }
  }
}