// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videographer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoGrapherDto _$VideoGrapherDtoFromJson(Map<String, dynamic> json) =>
    VideoGrapherDto(
      id: json['id'] as int,
      name: json['name'] as String,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$VideoGrapherDtoToJson(VideoGrapherDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
    };
