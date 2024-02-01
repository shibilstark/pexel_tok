import 'package:json_annotation/json_annotation.dart';
import 'package:pexel_tok/domain/videos/model/video_model/videographer_model.dart';

part "videographer_dto.g.dart";

@JsonSerializable()
class VideoGrapherDto {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'url')
  String? url;

  VideoGrapherDto({
    required this.id,
    required this.name,
    this.url,
  });

  factory VideoGrapherDto.fromJson(Map<String, dynamic> json) {
    return _$VideoGrapherDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VideoGrapherDtoToJson(this);

  VideoGrapherModel toModel() {
    return VideoGrapherModel(
      id: id,
      name: name,
      url: url,
    );
  }
}
