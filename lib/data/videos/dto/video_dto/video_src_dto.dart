import 'package:json_annotation/json_annotation.dart';
import 'package:pexel_tok/domain/videos/model/video_model/video_src_model.dart';

part "video_src_dto.g.dart";

@JsonSerializable()
class VideoSrcDto {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'quality')
  String quality;
  @JsonKey(name: 'file_type')
  String fileType;
  @JsonKey(name: 'width')
  int width;
  @JsonKey(name: 'height')
  int height;
  @JsonKey(name: 'fps')
  double? fps;
  @JsonKey(name: 'link')
  String link;

  VideoSrcDto({
    required this.id,
    required this.quality,
    required this.fileType,
    required this.width,
    required this.height,
    required this.fps,
    required this.link,
  });

  factory VideoSrcDto.fromJson(Map<String, dynamic> json) {
    return _$VideoSrcDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VideoSrcDtoToJson(this);

  VideoSrcModel toModel() {
    return VideoSrcModel(
      id: id,
      quality: quality,
      fileType: fileType,
      width: width,
      height: height,
      fps: fps,
      link: link,
    );
  }
}
