part of 'api_handler_cubit.dart';

abstract class ApiHandlerState {}

final class ApiHandlerInitial extends ApiHandlerState {}

final class ApiHandlerSuccess extends ApiHandlerState {}

final class ApiHandlerError extends ApiHandlerState {}

final class ApiHandlerLoading extends ApiHandlerState {}