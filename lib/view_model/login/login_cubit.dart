import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iv/view/pages/navigate/firstpage.dart';
import 'package:iv/view/pages/navigate/navigate.dart';
import 'package:iv/view_model/network/constant.dart';
import 'package:iv/view_model/network/dio_helper.dart';
import 'package:iv/view_model/network/end_points.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  TextEditingController email = TextEditingController();
  TextEditingController passwrod = TextEditingController();

  static LoginCubit get(context) => BlocProvider.of(context);

  void logIn(context) {
    var data = {"email": email.text, "password": passwrod.text};
    print(data);
    DioHelper.postData(url: loginEndPoint, data: data).then((value) {
      print(value.statusCode);
      if (value.statusCode == 200) {
        token = value.data["accessToken"];
        print(token);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Navigate()));
      }
    }).catchError((onError) {
      print(onError);
    });
  }
}
