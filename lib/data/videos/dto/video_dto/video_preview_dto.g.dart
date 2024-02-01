// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_preview_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoPreviewDto _$VideoPreviewDtoFromJson(Map<String, dynamic> json) =>
    VideoPreviewDto(
      id: json['id'] as int,
      picture: json['picture'] as String,
      nr: json['nr'] as int?,
    );

Map<String, dynamic> _$VideoPreviewDtoToJson(VideoPreviewDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'picture': instance.picture,
      'nr': instance.nr,
    };
