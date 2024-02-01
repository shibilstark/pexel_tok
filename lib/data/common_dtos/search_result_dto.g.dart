// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultDtoImages _$SearchResultDtoImagesFromJson(
        Map<String, dynamic> json) =>
    SearchResultDtoImages(
      page: json['page'] as int,
      perPage: json['perPage'] as int,
      totalResults: json['totalResults'] as int,
      nextPage: json['nextPage'] as String?,
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SearchResultDtoImagesToJson(
        SearchResultDtoImages instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
      'totalResults': instance.totalResults,
      'nextPage': instance.nextPage,
      'photos': instance.photos,
    };

SearchResultDtoVideos _$SearchResultDtoVideosFromJson(
        Map<String, dynamic> json) =>
    SearchResultDtoVideos(
      page: json['page'] as int,
      perPage: json['perPage'] as int,
      totalResults: json['totalResults'] as int,
      nextPage: json['nextPage'] as String?,
      videos:
          (json['videos'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SearchResultDtoVideosToJson(
        SearchResultDtoVideos instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
      'totalResults': instance.totalResults,
      'nextPage': instance.nextPage,
      'videos': instance.videos,
    };
