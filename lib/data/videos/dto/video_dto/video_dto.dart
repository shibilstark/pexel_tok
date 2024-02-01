import 'package:json_annotation/json_annotation.dart';
import 'package:pexel_tok/domain/videos/model/video_model/video_model.dart';

import 'video_preview_dto.dart';
import 'video_src_dto.dart';
import 'videographer_dto.dart';

part "video_dto.g.dart";

@JsonSerializable()
class VideoDto {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'width')
  int width;
  @JsonKey(name: 'height')
  int height;
  @JsonKey(name: 'url')
  String? url;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'duration')
  int duration;
  @JsonKey(name: 'user')
  VideoGrapherDto user;
  @JsonKey(name: 'video_files')
  List<VideoSrcDto> videoFiles;
  @JsonKey(name: 'video_pictures')
  List<VideoPreviewDto> videoPictures;

  VideoDto({
    required this.id,
    required this.width,
    required this.height,
    this.url,
    this.image,
    required this.duration,
    required this.user,
    required this.videoFiles,
    required this.videoPictures,
  });

  factory VideoDto.fromJson(Map<String, dynamic> json) {
    return _$VideoDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VideoDtoToJson(this);

  VideoModel toModel() {
    return VideoModel(
      id: id,
      width: width,
      height: height,
      duration: duration,
      videoGrapher: user.toModel(),
      image: image,
      url: url,
      videoFiles: videoFiles.map((e) => e.toModel()).toList(),
      videoPictures: videoPictures.map((e) => e.toModel()).toList(),
    );
  }
}
