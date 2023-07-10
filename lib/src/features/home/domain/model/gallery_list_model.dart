import 'package:freezed_annotation/freezed_annotation.dart';

part 'gallery_list_model.freezed.dart';
part 'gallery_list_model.g.dart';

@freezed
class GalleryListModel with _$GalleryListModel {
  const factory GalleryListModel({
    // id
    required String galContentId,
    // 내용 타입에 대한 id
    required String galContentTypeId,
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
    // 검색 키워드
    required String galSearchKeyword,
    // 데이터 생성일자
    // ex) "20230707144414"
    required String galCreatedtime,
    // 데이터 수정일자
    required String galModifiedtime,
  }) = _GalleryListModel;

  factory GalleryListModel.fromJson(Map<String, dynamic> json) =>
      _$GalleryListModelFromJson(json);
}
