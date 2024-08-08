import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/constants/const.dart';
import 'package:news/cubit/news_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit()
        ..getGeneralData()
        ..getBusinessData()
        ..getSportsData(),
      child: BlocConsumer<NewsCubit, NewsState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = NewsCubit.get(context);
          return Scaffold(
            backgroundColor: kColor1,
            appBar: AppBar(
              shadowColor: kColor1,
              backgroundColor: kColor1,
              surfaceTintColor: kColor1,
              title: RichText(
                  text: const TextSpan(
                text: 'News',
                style: TextStyle(color: kBlack, fontSize: 24),
                children: [
                  TextSpan(
                    text: 'App',
                    style: TextStyle(
                      color: kColor4,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
              centerTitle: true,
            ),
            bottomNavigationBar: BottomNavigationBar(
              unselectedFontSize: 14,
              selectedFontSize: 18,
              fixedColor: kColor1,
              unselectedItemColor: kColor3,
              backgroundColor: kColor4,
              items: cubit.bottomItems,
              currentIndex: cubit.currentIndex,
              onTap: (value) {
                cubit.changeBottomNav(value);
              },
            ),
            body: cubit.screens[cubit.currentIndex],
          );
        },
      ),
    );
  }
}
