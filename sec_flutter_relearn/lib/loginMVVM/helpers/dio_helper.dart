import 'package:dio/dio.dart';

class DioApiHelper {
  static Dio _dio = Dio();

  static void dioInit() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://student.valuxapps.com/api/',
      ),
    );
  }

  static Future<Response> postData({required String path, Map? body}) async {
    try {
      final response = await _dio.get(path, data: body);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }
}
