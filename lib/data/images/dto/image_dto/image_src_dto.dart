import 'package:json_annotation/json_annotation.dart';
import 'package:pexel_tok/domain/images/model/image_src_model.dart';

part "image_src_dto.g.dart";

@JsonSerializable()
class ImageSrcDto {
  @JsonKey(name: 'original')
  final String original;
  @JsonKey(name: 'large2x')
  String? large2x;
  @JsonKey(name: 'large')
  String? large;
  @JsonKey(name: 'medium')
  String? medium;
  @JsonKey(name: 'small')
  String? small;
  @JsonKey(name: 'portrait')
  String? portrait;
  @JsonKey(name: 'landscape')
  String? landscape;
  @JsonKey(name: 'tiny')
  String? tiny;

  ImageSrcDto({
    required this.original,
    this.large2x,
    this.large,
    this.medium,
    this.small,
    this.portrait,
    this.landscape,
    this.tiny,
  });

  factory ImageSrcDto.fromJson(Map<String, dynamic> json) {
    return _$ImageSrcDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ImageSrcDtoToJson(this);

  ImageSrcModel toModel() {
    return ImageSrcModel(
      original: original,
      landscape: landscape,
      large2x: large2x,
      large: large,
      medium: medium,
      portrait: portrait,
      small: small,
      tiny: tiny,
    );
  }
}
