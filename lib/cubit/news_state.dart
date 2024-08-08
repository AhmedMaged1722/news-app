part of 'news_cubit.dart';

@immutable
sealed class NewsState {}

class CubitInitial extends NewsState {}

class ChangeBottomNavState extends NewsState {}

class GetBusinessDataLoading extends NewsState {}

class GetBusinessDataSuccess extends NewsState {}

class GetBusinessDataError extends NewsState {
  final String error;

  GetBusinessDataError(this.error);
}

class GetGeneralDataLoading extends NewsState {}

class GetGeneralDataSuccess extends NewsState {}

class GetGeneralDataError extends NewsState {
  final String error;

  GetGeneralDataError(this.error);
}

class GetSportsDataLoading extends NewsState {}

class GetSportsDataSuccess extends NewsState {}

class GetSportsDataError extends NewsState {
  final String error;

  GetSportsDataError(this.error);
}
