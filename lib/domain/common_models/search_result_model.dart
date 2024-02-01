import 'media_model.dart';

class SearchResultModel {
  final int page;
  final int perPage;
  final int totalResults;
  String? nextPage;
  final MediaListModel media;

  SearchResultModel({
    required this.page,
    required this.perPage,
    required this.totalResults,
    required this.media,
    this.nextPage,
  });
}
