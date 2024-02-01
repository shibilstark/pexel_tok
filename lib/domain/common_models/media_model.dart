import 'package:pexel_tok/domain/enums/custom_enums.dart';
import 'package:pexel_tok/domain/images/model/image_model.dart';
import 'package:pexel_tok/domain/videos/model/video_model/video_model.dart';

/// Either [ImageModel] or [VideoModel] will be in medias, type will be [MediaType]
class MediaListModel {
  final MediaType type;
  final List<dynamic> medias;

  const MediaListModel({
    required this.medias,
    required this.type,
  });
}
