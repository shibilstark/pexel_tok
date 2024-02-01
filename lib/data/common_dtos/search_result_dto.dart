import 'package:json_annotation/json_annotation.dart';
import 'package:pexel_tok/data/images/dto/image_dto/image_dto.dart';
import 'package:pexel_tok/data/videos/dto/video_dto/video_dto.dart';
import 'package:pexel_tok/domain/common_models/media_model.dart';
import 'package:pexel_tok/domain/common_models/search_result_model.dart';
import 'package:pexel_tok/domain/enums/custom_enums.dart';

part 'search_result_dto.g.dart';

@JsonSerializable()
class SearchResultDtoImages {
  @JsonKey(name: 'page')
  final int page;
  @JsonKey(name: 'per_page')
  final int perPage;
  @JsonKey(name: 'total_results')
  final int totalResults;
  @JsonKey(name: 'next_page')
  String? nextPage;
  @JsonKey(name: 'photos')
  final List<ImageDto> photos;

  SearchResultDtoImages({
    required this.page,
    required this.perPage,
    required this.totalResults,
    required this.nextPage,
    required this.photos,
  });

  factory SearchResultDtoImages.fromJson(Map<String, dynamic> json) {
    return _$SearchResultDtoImagesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultDtoImagesToJson(this);

  SearchResultModel toModel() {
    return SearchResultModel(
      page: page,
      perPage: perPage,
      totalResults: totalResults,
      media: MediaListModel(
        medias: photos,
        type: MediaType.image,
      ),
    );
  }
}

@JsonSerializable()
class SearchResultDtoVideos {
  @JsonKey(name: 'page')
  final int page;
  @JsonKey(name: 'per_page')
  final int perPage;
  @JsonKey(name: 'total_results')
  final int totalResults;
  @JsonKey(name: 'next_page')
  String? nextPage;
  @JsonKey(name: 'videos')
  final List<VideoDto> videos;

  SearchResultDtoVideos({
    required this.page,
    required this.perPage,
    required this.totalResults,
    required this.nextPage,
    required this.videos,
  });

  factory SearchResultDtoVideos.fromJson(Map<String, dynamic> json) {
    return _$SearchResultDtoVideosFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultDtoVideosToJson(this);

  SearchResultModel toModel() {
    return SearchResultModel(
      page: page,
      perPage: perPage,
      totalResults: totalResults,
      media: MediaListModel(
        medias: videos,
        type: MediaType.video,
      ),
    );
  }
}
