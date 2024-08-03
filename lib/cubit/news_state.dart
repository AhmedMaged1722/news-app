part of 'news_cubit.dart';

@immutable
sealed class NewsState {}

class CubitInitial extends NewsState {}

class ChangeBottomNavState extends NewsState {}
