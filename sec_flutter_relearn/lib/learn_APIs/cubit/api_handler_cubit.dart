import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:sec_flutter_relearn/learn_APIs/models/user_card_model.dart';

import '../services/user_data.dart';

part 'api_handler_state.dart';

class ApiHandlerCubit extends Cubit<ApiHandlerState> {
  ApiHandlerCubit() : super(ApiHandlerInitial());
  List<UserCardModel> usersList = [];
  final _dio = Dio();

  Future<List<UserCardModel>> getData() async {
    emit(ApiHandlerLoading());
    try {
      final response =
          await _dio.get('https://jsonplaceholder.typicode.com/users');
      List dataList = response.data;
      usersList = dataList.map((e) => UserCardModel.fromJson(e)).toList();
      emit(ApiHandlerSuccess());
      return usersList;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'Oops! There was an error, Try later';
      emit(ApiHandlerError(errorMessage));
      log(errorMessage);
      throw Exception(errorMessage);
    } catch (e) {
      emit(ApiHandlerError('Oops! There was an error, Try later'));
      throw Exception('Oops! There was an error, Try later');
    }
  }
}
