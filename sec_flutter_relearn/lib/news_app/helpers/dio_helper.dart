import 'package:dio/dio.dart';

class ApiHelper {
  static Dio? _dio;

  static void dioInit() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://newsapi.org/v2/',
      ),
    );
  }

  static Future<Response> getData(
      {required String path,
      required String country,
      required String apiKey}) async {
    try {
      final response = await _dio!.get(
        path,
        // 'https://newsapi.org/v2/top-headlines?country=$country&apiKey=$apiKey',
        queryParameters: {
          'country': country,
          'apiKey': apiKey,
        },
      );
      return response;
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }
}
