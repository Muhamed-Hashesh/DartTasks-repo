import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:sec_flutter_relearn/news_app/constants/strings.dart';
import 'package:sec_flutter_relearn/news_app/helpers/dio_helper.dart';
import 'package:sec_flutter_relearn/news_app/models/news_model.dart';

part 'call_news_state.dart';

class CallNewsCubit extends Cubit<CallNewsState> {
  CallNewsCubit() : super(CallNewsInitial()) {
    _dio = Dio();
  }

  NewsModel newsModel = NewsModel();
  Dio? _dio;

  getNews({required String country}) async {
    try {
      emit(CallNewsLoading());
      Future.delayed(const Duration(seconds: 5));
      final response = await ApiHelper.getData(
          path: AppConstants.topHeadlines,
          country: country,
          apiKey: AppConstants.apiKey);
      // final response = await _dio!.get(
      //     'https://newsapi.org/v2/top-headlines?country=$country&apiKey=${AppConstants.apiKey}');
      log(response.data['status']);
      newsModel = NewsModel.fromJson(response.data);
      if (newsModel.status == 'ok') {
        emit(CallNewsSuccess());
      } else {
        emit(CallNewsError());
      }
    } catch (e) {
      emit(CallNewsError());

      // log(e.toString());
    }
  }
}
