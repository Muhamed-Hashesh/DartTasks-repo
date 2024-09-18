import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:sec_flutter_relearn/loginMVVM/data/models/register_model.dart';
import 'package:sec_flutter_relearn/loginMVVM/helpers/dio_helper.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  RegisterUserModel registerUserModel = RegisterUserModel();

  void registerUserData(
      {required String name,
      required String email,
      required String phone,
      required String password}) async {
    emit(RegisterLoading());
    try {
      final response =
          await DioApiHelper.dioApiHelper.postData(path: 'register', body: {
        'name': name,
        'email': email,
        'phone': phone,
        'password': password,
      });
      registerUserModel = RegisterUserModel.fromJson(response['data']);

      // log(registerUserModel.toString());

      if (registerUserModel.status == true) {
        emit(RegisterSuccess());
      } else {
        emit(RegisterError());
      }
    } on DioException {
      emit(RegisterError());
    } catch (e) {
      log(e.toString());
      emit(RegisterError());
    }
  }
}
