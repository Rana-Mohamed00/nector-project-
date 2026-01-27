import 'package:flutter/material.dart';
import 'package:nectar_grocery/core/network/apiService.dart';
import 'package:nectar_grocery/core/utils/prefHelper.dart';
import 'package:nectar_grocery/features/data/login/UserModel.dart';


class AuthRepo{

  ApiService apiService = ApiService();

  //login
  Future<UserModel?> login(TextEditingController username , TextEditingController password) async {

      final response = await apiService.post('/auth/login',{'username' :username ,'password':password});
      final user = UserModel.fromJson(response);
      if(user.accessToken != null ){
        await PrefHelper.saveToken(user.accessToken!);
      }
      return user;
  }
}