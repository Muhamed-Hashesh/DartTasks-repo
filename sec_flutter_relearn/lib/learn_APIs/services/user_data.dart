import 'package:dio/dio.dart';
import 'package:sec_flutter_relearn/learn_APIs/models/user_card_model.dart';

class GetUserDataService {
  final _dio = Dio();

  Future<List<UserCardModel>> getUserData(
      {required List<UserCardModel> usersList}) async {
    try {
      final response =
          await _dio.get('https://jsonplaceholder.typicode.com/users');
      // print(response.data);
      List dataList = response.data;
      List<UserCardModel> usersList = [];

      // for (var element in dataList) {
      //   UserCardModel userModel = UserCardModel.fromJson(element);
      //   usersList.add(userModel);
      // }
      usersList = dataList.map((e) => UserCardModel.fromJson(e)).toList();
      print(usersList[0].email);
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
