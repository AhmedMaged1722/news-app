import 'package:dio/dio.dart';
import 'package:news/constants/app_consts.dart';

class ApiServices {
  static Dio? dio;
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: AppConsts.baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response?> getData(
      {required String url, required Map<String, dynamic> query}) async {
    return await dio?.get(url, queryParameters: query);
  }
}
