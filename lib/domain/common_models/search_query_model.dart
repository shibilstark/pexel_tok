// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:pexel_tok/domain/enums/custom_enums.dart';

class SearchQueryModel {
  final String query;

  /// landscape, portrait or square.
  final String? orientation;

  /// in case of image large(24MP), medium(12MP) or small(4MP)
  /// in case of Video large(4K), medium(Full HD) or small(HD)
  final SearchMediaSize? size;

  /// red, orange, yellow, green, turquoise, blue, violet, pink,
  /// brown, black, gray, white or any hexidecimal color code (eg. #ffffff).
  final String? color;

  /// Default 1
  final int page;

  /// Default 15, max 80
  final int perpage;

  SearchQueryModel({
    required this.query,
    this.orientation,
    this.size,
    this.color,
    this.page = 1,
    this.perpage = 15,
  });

  Map<String, dynamic> toQuery() {
    Map<String, dynamic> query = toMap();
    query.removeWhere((key, value) => value == null);
    log("$query");
    return query;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': query,
      'orientation': orientation,
      'size': size?.name,
      'color': color,
      'page': page,
      'per_page': perpage,
    };
  }
}
