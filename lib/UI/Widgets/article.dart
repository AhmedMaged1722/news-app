import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:news/UI/Screens/details.dart';
import 'package:news/constants/const.dart';

Widget article(context, article) {
  var urlToImage = article['urlToImage'];
  return InkWell(
    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Details(
        url: '${article['url']}',
        name: '${article['author']}',
      );
    })),
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: ConditionalBuilder(
              condition: urlToImage != null,
              builder: (context) => Image.network(
                '${article['urlToImage']}',
                height: 200,
                width: double.infinity,
              ),
              fallback: (context) => Center(
                child: Image.asset(
                  'assets/noImage.png',
                  height: 175,
                  width: 550,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              '${article['title']}',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kColor4,
                  overflow: TextOverflow.ellipsis),
              textAlign: TextAlign.right,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  '${article['publishedAt']}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kColor4,
                      overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
