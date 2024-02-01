import 'video_preview_model.dart';
import 'video_src_model.dart';
import 'videographer_model.dart';

class VideoModel {
  int id;
  int width;
  int height;
  String? url;
  String? image;
  int duration;
  VideoGrapherModel videoGrapher;
  List<VideoSrcModel>? videoFiles;
  List<VideoPreviewSrcModel>? videoPictures;

  VideoModel({
    required this.id,
    required this.width,
    required this.height,
    this.url,
    this.image,
    required this.duration,
    required this.videoGrapher,
    this.videoFiles,
    this.videoPictures,
  });
}
