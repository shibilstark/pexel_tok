import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pexel_tok/config/api/keys.dart';

class AppNetwork {
  static final _client = Dio(BaseOptions(
    headers: {
      "Authorization": PEXEL_API_KEY,
    },
    receiveDataWhenStatusError: true,
    sendTimeout: const Duration(seconds: 15) * 1000,
    connectTimeout: const Duration(seconds: 15) * 1000,
    receiveTimeout: const Duration(seconds: 15) * 1000,
  ));
  static Future<Either<String, Response<dynamic>>> get({
    required String url,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final res = await _client.get(url, queryParameters: queryParameters);

      return Right(res);
    } on DioException catch (e) {
      log(
        "{${e.message}  code: ${e.response?.realUri}",
      );

      return Left(e.message ?? "Something went wrong on server");
    } catch (e) {
      log(e.toString());
      return const Left(
          "Oops, it seems like something went wrong please try again later");
    }
  }
}
