import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_list_model.freezed.dart';
part 'gallery_list_model.g.dart';

@freezed
class GalleryListModel with _$GalleryListModel {
  const factory GalleryListModel({
    // id
    required String galContentId,
    // 사진 제목
    required String galTitle,
    // 사진 이미지 url
    required String galWebImageUrl,
    // 사진 찍은 월
    required String galPhotographyMonth,
    // 사진 찍은 장소
    required String galPhotographyLocation,
    // 사진가
    required String galPhotographer,
  }) = _GalleryListModel;

  factory GalleryListModel.fromJson(Map<String, dynamic> json) =>
      _$GalleryListModelFromJson(json);
}
