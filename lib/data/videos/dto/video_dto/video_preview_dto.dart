import 'package:json_annotation/json_annotation.dart';
import 'package:pexel_tok/domain/videos/model/video_model/video_preview_model.dart';

part "video_preview_dto.g.dart";

@JsonSerializable()
class VideoPreviewDto {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'picture')
  String picture;
  @JsonKey(name: 'nr')
  int? nr;

  VideoPreviewDto({required this.id, required this.picture, this.nr});

  factory VideoPreviewDto.fromJson(Map<String, dynamic> json) {
    return _$VideoPreviewDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VideoPreviewDtoToJson(this);

  VideoPreviewSrcModel toModel() {
    return VideoPreviewSrcModel(id: id, picture: picture);
  }
}
