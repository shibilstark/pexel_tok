import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pexel_tok/data/videos/videos_api/videos_api.dart';
import 'package:pexel_tok/domain/common_models/search_query_model.dart';
import 'package:pexel_tok/domain/common_models/search_result_model.dart';
import 'package:pexel_tok/domain/custom_types/custom_types.dart';
import 'package:pexel_tok/domain/failure/failure.dart';
import 'package:pexel_tok/domain/videos/videos_repository/videos_repository.dart';

@LazySingleton(as: VideosRepository)
class ImagesRepositoryImpl implements VideosRepository {
  final api = VidoeApi();

  @override
  FutureEither<SearchResultModel> getPopularVideos({
    int page = 1,
  }) async {
    final data = await api.getPopularVideos(page: page);

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
  FutureEither<SearchResultModel> searchVideos({
    required SearchQueryModel query,
  }) async {
    final data = await api.searchVideos(query: query);

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
