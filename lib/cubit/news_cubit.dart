import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/UI/Screens/business_screen.dart';
import 'package:news/UI/Screens/general_screen.dart';
import 'package:news/UI/Screens/sports_screen.dart';
import 'package:news/constants/const.dart';

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
        color: kColor2,
      ),
      label: 'General',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.business,
        color: kColor2,
      ),
      label: 'Business',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.sports_esports,
        color: kColor2,
      ),
      label: 'Sports',
      backgroundColor: kColor4,
    ),
  ];
}
