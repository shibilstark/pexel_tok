import 'package:injectable/injectable.dart';
import 'package:pexel_tok/domain/common_models/search_query_model.dart';
import 'package:pexel_tok/domain/common_models/search_result_model.dart';
import 'package:pexel_tok/domain/custom_types/custom_types.dart';

@injectable
abstract class ImagesRepository {
  FutureEither<SearchResultModel> searchImages({
    required SearchQueryModel query,
  });
  FutureEither<SearchResultModel> getCuratedImages({
    int page = 1,
  });
}
