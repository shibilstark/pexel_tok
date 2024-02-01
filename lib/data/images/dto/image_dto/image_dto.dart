import 'package:json_annotation/json_annotation.dart';
import 'package:pexel_tok/domain/images/model/image_model.dart';

import 'image_src_dto.dart';

part "image_dto.g.dart";

@JsonSerializable()
class ImageDto {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'width')
  int width;
  @JsonKey(name: 'height')
  int height;
  @JsonKey(name: 'url')
  String? url;
  @JsonKey(name: 'photographer')
  String photographer;
  @JsonKey(name: 'photographer_url')
  String photographerUrl;
  @JsonKey(name: 'photographer_id')
  int photographerId;
  @JsonKey(name: 'avg_color')
  String? avgColor;
  @JsonKey(name: 'src')
  ImageSrcDto src;
  @JsonKey(name: 'liked')
  bool liked;
  @JsonKey(name: 'alt')
  String? alt;

  ImageDto({
    required this.id,
    required this.width,
    required this.height,
    this.url,
    required this.photographer,
    required this.photographerUrl,
    required this.photographerId,
    this.avgColor,
    required this.src,
    required this.liked,
    this.alt,
  });

  factory ImageDto.fromJson(Map<String, dynamic> json) {
    return _$ImageDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ImageDtoToJson(this);

  ImageModel toModel() {
    return ImageModel(
      id: id,
      width: width,
      height: height,
      photographer: photographer,
      photographerUrl: photographerUrl,
      photographerId: photographerId,
      src: src.toModel(),
      liked: liked,
      alt: alt,
    );
  }
}
