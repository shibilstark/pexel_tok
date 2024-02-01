// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_src_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoSrcDto _$VideoSrcDtoFromJson(Map<String, dynamic> json) => VideoSrcDto(
      id: json['id'] as int,
      quality: json['quality'] as String,
      fileType: json['fileType'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      fps: (json['fps'] as num).toDouble(),
      link: json['link'] as String,
    );

Map<String, dynamic> _$VideoSrcDtoToJson(VideoSrcDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quality': instance.quality,
      'fileType': instance.fileType,
      'width': instance.width,
      'height': instance.height,
      'fps': instance.fps,
      'link': instance.link,
    };
