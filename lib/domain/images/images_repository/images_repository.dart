import 'package:pexel_tok/domain/common_models/search_result_model.dart';
import 'package:pexel_tok/domain/custom_types/custom_types.dart';

abstract interface class ImagesRepository {
  FutureEither<SearchResultModel> searchImages();
  FutureEither<SearchResultModel> getCuratedImages();
}
