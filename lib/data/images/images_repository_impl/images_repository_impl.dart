import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pexel_tok/data/images/images_api/images_api.dart';
import 'package:pexel_tok/domain/common_models/search_query_model.dart';
import 'package:pexel_tok/domain/common_models/search_result_model.dart';
import 'package:pexel_tok/domain/custom_types/custom_types.dart';
import 'package:pexel_tok/domain/failure/failure.dart';
import 'package:pexel_tok/domain/images/images_repository/images_repository.dart';

@LazySingleton(as: ImagesRepository)
class ImagesRepositoryImpl implements ImagesRepository {
  final api = ImageApi();

  @override
  FutureEither<SearchResultModel> getCuratedImages({
    int page = 1,
  }) async {
    final data = await api.getCuratedImages(page: page);

    return data.fold((err) {
      return Left(err);
    }, (dto) {
      try {
        final model = dto.toModel();

        return Right(model);
      } catch (e) {
        log("error while converting to model");
        return const Left(ClientFailure());
      }
    });
  }

  @override
  FutureEither<SearchResultModel> searchImages({
    required SearchQueryModel query,
  }) async {
    final data = await api.searchImages(query: query);

    data.fold((l) => null, (r) => null);

    return data.fold((err) {
      return Left(err);
    }, (dto) {
      try {
        final model = dto.toModel();

        return Right(model);
      } catch (e) {
        log("error while converting to model");
        return const Left(ClientFailure());
      }
    });
  }
}
