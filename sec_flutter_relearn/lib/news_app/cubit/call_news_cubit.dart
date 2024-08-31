import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sec_flutter_relearn/news_app/constants/strings.dart';
import 'package:sec_flutter_relearn/news_app/helpers/dio_helper.dart';
import 'package:sec_flutter_relearn/news_app/models/news_model.dart';

part 'call_news_state.dart';

class CallNewsCubit extends Cubit<CallNewsState> {
  CallNewsCubit() : super(CallNewsInitial());

  NewsModel newsModel = NewsModel();

  getNews({String country = 'us'}) async {
    emit(CallNewsLoading());
    try {
      final response = await ApiHelper.getData(
          country: country, apiKey: AppConstants.apiKey);
      newsModel = NewsModel.fromJson(response.data);
      log(newsModel.status.toString());
      if (newsModel.status == 'ok') {
        emit(CallNewsSuccess());
      } else {
        emit(CallNewsError());
      }
    } catch (e) {
      emit(CallNewsError());
      log('dwjnosxcnisdjnvijsdfnvisdfnivnsdjicvnsdicnisdncjisdncvinsdivnvjikn');
    }
  }
}
