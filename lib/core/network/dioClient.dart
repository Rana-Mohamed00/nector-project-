import 'package:dio/dio.dart';
import 'package:nectar_grocery/core/utils/prefHelper.dart';

class DioClient{
  final Dio _dio = Dio(
    BaseOptions(  //to fix base url
    //in note book
      baseUrl: 'https://dummyjson.com',
      headers: {"Content-Type" :'application/json'} , // if more than header ,we must write all header value here

    )
  );


  DioClient(){
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await PrefHelper.getToken();

          if( token != null && token.isNotEmpty){
            options.headers["Authorization" ] = 'Bearer $token';
          }

          return handler.next(options);
        }
      )
    );
  }
  Dio get dio => _dio;
}