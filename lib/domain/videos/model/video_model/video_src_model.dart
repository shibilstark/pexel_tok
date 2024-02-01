class VideoSrcModel {
  final int id;
  final String quality;
  final String fileType;
  final int width;
  final int height;
  final double? fps;
  final String link;

  const VideoSrcModel({
    required this.id,
    required this.quality,
    required this.fileType,
    required this.width,
    required this.height,
    required this.fps,
    required this.link,
  });
}
