// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'image_model_list.freezed.dart';
part 'image_model_list.g.dart';

ImageModelList imageModelListFromJson(String str) =>
    ImageModelList.fromJson(json.decode(str));

String imageModelListToJson(ImageModelList data) => json.encode(data.toJson());

@freezed
class ImageModelList with _$ImageModelList {
  const factory ImageModelList({
    @JsonKey(name: "page") int? page,
    @JsonKey(name: "per_page") int? perPage,
    @JsonKey(name: "photos") List<Photo>? photos,
    @JsonKey(name: "total_results") int? totalResults,
    @JsonKey(name: "next_page") String? nextPage,
  }) = _ImageModelList;

  factory ImageModelList.fromJson(Map<String, dynamic> json) =>
      _$ImageModelListFromJson(json);
}

@freezed
class Photo with _$Photo {
  const factory Photo({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "width") int? width,
    @JsonKey(name: "height") int? height,
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "photographer") String? photographer,
    @JsonKey(name: "photographer_url") String? photographerUrl,
    @JsonKey(name: "photographer_id") int? photographerId,
    @JsonKey(name: "avg_color") String? avgColor,
    @JsonKey(name: "src") Src? src,
    @JsonKey(name: "liked") bool? liked,
    @JsonKey(name: "alt") String? alt,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}

@freezed
class Src with _$Src {
  const factory Src({
    @JsonKey(name: "original") String? original,
    @JsonKey(name: "large2x") String? large2X,
    @JsonKey(name: "large") String? large,
    @JsonKey(name: "medium") String? medium,
    @JsonKey(name: "small") String? small,
    @JsonKey(name: "portrait") String? portrait,
    @JsonKey(name: "landscape") String? landscape,
    @JsonKey(name: "tiny") String? tiny,
  }) = _Src;

  factory Src.fromJson(Map<String, dynamic> json) => _$SrcFromJson(json);
}
