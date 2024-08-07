import 'package:flutter/material.dart';
import 'package:news/constants/const.dart';

Widget article() {
  return Padding(
    padding: const EdgeInsets.all(12),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            'https://gizmodo.com/app/uploads/2024/08/Apple-Wallet-State-ID.jpg',
            height: 200,
            width: double.infinity,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Title',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kColor4,
              overflow: TextOverflow.ellipsis),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Date',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kColor4,
              overflow: TextOverflow.ellipsis),
        ),
      ],
    ),
  );
}
