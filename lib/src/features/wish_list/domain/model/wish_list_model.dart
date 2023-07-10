import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'wish_list_model.g.dart';
part 'wish_list_model.freezed.dart';

@freezed
@HiveType(typeId: 1, adapterName: 'WishListModelAdapter')
class WishListModel extends HiveObject with _$WishListModel {
  WishListModel._();
  factory WishListModel({
    // id
    @HiveField(0) required String galContentId,
    // 사진 제목
    @HiveField(2) required String galTitle,
    // 사진 이미지 url
    @HiveField(3) required String galWebImageUrl,
    // 사진 찍은 월
    @HiveField(4) required String galPhotographyMonth,
    // 사진 찍은 장소
    @HiveField(5) required String galPhotographyLocation,
    // 사진가
    @HiveField(6) required String galPhotographer,
  }) = _WishListModel;

  factory WishListModel.fromJson(Map<String, dynamic> json) =>
      _$WishListModelFromJson(json);
}
