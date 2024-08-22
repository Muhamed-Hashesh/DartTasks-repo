import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:sec_flutter_relearn/learn_APIs/models/user_card_model.dart';
import 'package:sec_flutter_relearn/learn_APIs/services/user_data.dart';

part 'api_handler_state.dart';

class ApiHandlerCubit extends Cubit<ApiHandlerState> {
  ApiHandlerCubit() : super(ApiHandlerInitial());
  List<UserCardModel> usersList = [];
  final _dio = Dio();

  Future<List<UserCardModel>> getData() async {
    try {
      final response =
          await _dio.get('https://jsonplaceholder.typicode.com/users');
      // print(response.data);
      List dataList = response.data;

      for (var element in dataList) {
        UserCardModel userModel = UserCardModel.fromJson(element);
        usersList.add(userModel);
      }
      // usersList = dataList.map((e) => UserCardModel.fromJson(e)).toList();
      // print(usersList[0].email);
      emit(ApiHandlerSuccess());
      return usersList;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'Oops! There was an error, Try later';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('Oops! There was an error, Try later');
    }
  }
}
