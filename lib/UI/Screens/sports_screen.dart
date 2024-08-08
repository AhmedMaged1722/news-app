import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/UI/Widgets/article.dart';
// import 'package:news/UI/Widgets/article.dart';
import 'package:news/constants/color.dart';
import 'package:news/cubit/news_cubit.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        var list = NewsCubit.get(context).sportsArticles;
        return ConditionalBuilder(
          condition: state is! GetSportsDataLoading,
          builder: (context) => ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return article(context, list[index]);
            },
            separatorBuilder: (context, index) {
              return const Divider(
                indent: 20,
                endIndent: 20,
                thickness: 2,
              );
            },
            itemCount: list.length,
          ),
          fallback: (context) => const Center(
            child: CircularProgressIndicator(
              color: kColor4,
            ),
          ),
        );
      },
    );
  }
}
