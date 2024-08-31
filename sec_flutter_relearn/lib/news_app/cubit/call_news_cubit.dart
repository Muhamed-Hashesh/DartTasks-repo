import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:sec_flutter_relearn/news_app/constants/strings.dart';
import 'package:sec_flutter_relearn/news_app/models/news_model.dart';

part 'call_news_state.dart';

class CallNewsCubit extends Cubit<CallNewsState> {
  CallNewsCubit() : super(CallNewsInitial());

  NewsModel newsModel = NewsModel();
  Dio? _dio;

  getNews() async {
    try {
      emit(CallNewsLoading());
      // final response =
      //     await ApiHelper.getData(country: 'ae', apiKey: AppConstants.apiKey);
      final response = await _dio!.get(
          'https://newsapi.org/v2/top-headlines?country=ae&apiKey=${AppConstants.apiKey}');
      log(response.data['status']);
      newsModel = NewsModel.fromJson(response.data);
      log(newsModel.status.toString());
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