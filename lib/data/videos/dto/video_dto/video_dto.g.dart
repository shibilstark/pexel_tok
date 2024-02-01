// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoDto _$VideoDtoFromJson(Map<String, dynamic> json) => VideoDto(
      id: json['id'] as int,
      width: json['width'] as int,
      height: json['height'] as int,
      url: json['url'] as String?,
      image: json['image'] as String?,
      duration: json['duration'] as int,
      user: VideoGrapherDto.fromJson(json['user'] as Map<String, dynamic>),
      videoFiles: (json['video_files'] as List<dynamic>)
          .map((e) => VideoSrcDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      videoPictures: (json['video_pictures'] as List<dynamic>)
          .map((e) => VideoPreviewDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VideoDtoToJson(VideoDto instance) => <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
      'image': instance.image,
      'duration': instance.duration,
      'user': instance.user,
      'video_files': instance.videoFiles,
      'video_pictures': instance.videoPictures,
    };
