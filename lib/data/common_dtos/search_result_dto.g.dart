// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultDtoImages _$SearchResultDtoImagesFromJson(
        Map<String, dynamic> json) =>
    SearchResultDtoImages(
      page: json['page'] as int,
      perPage: json['per_page'] as int,
      totalResults: json['total_results'] as int,
      nextPage: json['next_page'] as String?,
      photos: (json['photos'] as List<dynamic>)
          .map((e) => ImageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchResultDtoImagesToJson(
        SearchResultDtoImages instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total_results': instance.totalResults,
      'next_page': instance.nextPage,
      'photos': instance.photos,
    };

SearchResultDtoVideos _$SearchResultDtoVideosFromJson(
        Map<String, dynamic> json) =>
    SearchResultDtoVideos(
      page: json['page'] as int,
      perPage: json['per_page'] as int,
      totalResults: json['total_results'] as int,
      nextPage: json['next_page'] as String?,
      videos: (json['videos'] as List<dynamic>)
          .map((e) => VideoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchResultDtoVideosToJson(
        SearchResultDtoVideos instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total_results': instance.totalResults,
      'next_page': instance.nextPage,
      'videos': instance.videos,
    };
