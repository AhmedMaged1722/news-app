import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/UI/Screens/business_screen.dart';
import 'package:news/UI/Screens/general_screen.dart';
import 'package:news/UI/Screens/sports_screen.dart';
import 'package:news/constants/app_consts.dart';
import 'package:news/constants/color.dart';
import 'package:news/data/Services/api_services.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(CubitInitial());
  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens = const [
    GeneralScreen(),
    BusinessScreen(),
    SportsScreen(),
  ];

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(ChangeBottomNavState());
  }

  List<BottomNavigationBarItem> bottomItems = const [
    BottomNavigationBarItem(
      backgroundColor: kColor2,
      icon: Icon(
        Icons.article,
      ),
      label: 'General',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.business,
      ),
      label: 'Business',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.sports_esports,
      ),
      label: 'Sports',
      backgroundColor: kColor4,
    ),
  ];

  List<dynamic> businessArticles = [];
  void getBusinessData() {
    emit(GetBusinessDataLoading());
    ApiServices.getData(url: AppConsts.topHeadLine, query: {
      'country': 'eg',
      'apiKey': AppConsts.apiKey,
      'category': 'business'
    }).then((value) {
      // debugPrint(value?.data['articles'][5]['title']);
      businessArticles = value?.data['articles'];
      emit(GetBusinessDataSuccess());
    }).catchError((e) {
      // debugPrint(e.toString());
      emit(GetBusinessDataError(e.toString()));
    });
  }

  List<dynamic> generalArticles = [];

  void getGeneralData() {
    emit(GetBusinessDataLoading());
    ApiServices.getData(url: AppConsts.topHeadLine, query: {
      'country': 'eg',
      'apiKey': AppConsts.apiKey,
      'category': 'general'
    }).then((value) {
      // debugPrint(value?.data['articles'][5]['title']);
      generalArticles = value?.data['articles'];
      emit(GetBusinessDataSuccess());
    }).catchError((e) {
      // debugPrint(e.toString());
      emit(GetBusinessDataError(e.toString()));
    });
  }

  List<dynamic> sportsArticles = [];

  void getSportsData() {
    emit(GetBusinessDataLoading());
    ApiServices.getData(url: AppConsts.topHeadLine, query: {
      'country': 'eg',
      'apiKey': AppConsts.apiKey,
      'category': 'sports'
    }).then((value) {
      // debugPrint(value?.data['articles'][5]['title']);
      sportsArticles = value?.data['articles'];
      emit(GetBusinessDataSuccess());
    }).catchError((e) {
      // debugPrint(e.toString());
      emit(GetBusinessDataError(e.toString()));
    });
  }
}
