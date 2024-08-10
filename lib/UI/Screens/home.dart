import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/UI/Screens/settings.dart';
// import 'package:news/constants/color.dart';
// import 'package:news/cubit/cubit/theme_cubit.dart';
import 'package:news/cubit/news_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            appBar: AppBar(
              title: const Text(
                'NewsApp',
                style: TextStyle(
                  // color: kColor1,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: false,
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const Settings();
                    }));
                    // context.read<ThemeCubit>().toggleTheme();
                    // setState(() {});
                    // themeChange = !themeChange;
                  },
                  icon: const Icon(
                    Icons.settings, size: 28,
                    // themeChange
                    //     ? Icons.brightness_2_outlined
                    //     : Icons.brightness_2_sharp,
                  ),
                )
              ],
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              unselectedFontSize: 14,
              selectedFontSize: 18,
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
