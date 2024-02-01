import 'package:injectable/injectable.dart';
import 'package:pexel_tok/domain/common_models/search_query_model.dart';
import 'package:pexel_tok/domain/common_models/search_result_model.dart';
import 'package:pexel_tok/domain/custom_types/custom_types.dart';

@injectable
abstract class VideosRepository {
  FutureEither<SearchResultModel> searchVideos({
    required SearchQueryModel query,
  });
  FutureEither<SearchResultModel> getPopularVideos({
    int page = 1,
  });
}
