import 'image_src_model.dart';

class ImageModel {
  final int id;
  final int width;
  final int height;
  String? url;
  String photographer;
  final String photographerUrl;
  final int photographerId;
  String? avgColor;
  final ImageSrcModel src;
  final bool liked;
  String? alt;

  ImageModel({
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
    required this.alt,
  });
}
