import 'dart:developer';

import 'package:dio/dio.dart';

class DioApiHelper {
  DioApiHelper._();

  static final DioApiHelper dioApiHelper = DioApiHelper._();

  static Dio _dio = Dio();

  static void dioInit() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://student.valuxapps.com/api/',
      ),
    );
  }

  Future<dynamic> postData({
    required String path,
    Map<String, dynamic>? body,
  }) async {
    try {
      final response = await _dio.post(path, data: body);
      log(response.data.toString());
      return response.data;
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }
}
