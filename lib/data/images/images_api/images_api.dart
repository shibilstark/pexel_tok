import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:pexel_tok/config/api/endpoints.dart';
import 'package:pexel_tok/data/common_dtos/search_result_dto.dart';
import 'package:pexel_tok/domain/common_models/search_query_model.dart';
import 'package:pexel_tok/domain/custom_types/custom_types.dart';
import 'package:pexel_tok/domain/failure/failure.dart';
import 'package:pexel_tok/packages/network/app_network.dart';

class ImageApi {
  FutureEither<SearchResultDtoImages> searchImages(
      {required SearchQueryModel query}) async {
    try {
      final response = await AppNetwork.get(
          url: AppApi.baseUrl + AppApi.searchImage,
          queryParameters: query.toQuery());

      return response.fold(
        (error) => Left(ServerFailure(message: error)),
        (result) {
          return Right(
            SearchResultDtoImages.fromJson(result.data),
          );
        },
      );
    } catch (e) {
      log("Error while converting to dto, $e");

      return const Left(ClientFailure());
    }
  }

  FutureEither<SearchResultDtoImages> getCuratedImages(
      {required int page}) async {
    try {
      final response = await AppNetwork.get(
          url: AppApi.baseUrl + AppApi.searchCuratedImage,
          queryParameters: {
            "page": page,
          });

      return response.fold(
        (error) => Left(ServerFailure(message: error)),
        (result) {
          return Right(
            SearchResultDtoImages.fromJson(result.data),
          );
        },
      );
    } catch (e) {
      log("Error while converting to dto, $e");

      return const Left(ClientFailure());
    }
  }
}
