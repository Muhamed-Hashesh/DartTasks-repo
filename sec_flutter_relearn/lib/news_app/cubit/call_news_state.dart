part of 'call_news_cubit.dart';

@immutable
sealed class CallNewsState {}

final class CallNewsInitial extends CallNewsState {}

final class CallNewsSuccess extends CallNewsState {}

final class CallNewsError extends CallNewsState {}

final class CallNewsLoading extends CallNewsState {}
