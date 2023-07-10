// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GalleryListModel _$$_GalleryListModelFromJson(Map<String, dynamic> json) =>
    _$_GalleryListModel(
      galContentId: json['galContentId'] as String,
      galContentTypeId: json['galContentTypeId'] as String,
      galTitle: json['galTitle'] as String,
      galWebImageUrl: json['galWebImageUrl'] as String,
      galCreatedtime: json['galCreatedtime'] as String,
      galModifiedtime: json['galModifiedtime'] as String,
      galPhotographyMonth: json['galPhotographyMonth'] as String,
      galPhotographyLocation: json['galPhotographyLocation'] as String,
      galPhotographer: json['galPhotographer'] as String,
      galSearchKeyword: json['galSearchKeyword'] as String,
    );

Map<String, dynamic> _$$_GalleryListModelToJson(_$_GalleryListModel instance) =>
    <String, dynamic>{
      'galContentId': instance.galContentId,
      'galContentTypeId': instance.galContentTypeId,
      'galTitle': instance.galTitle,
      'galWebImageUrl': instance.galWebImageUrl,
      'galCreatedtime': instance.galCreatedtime,
      'galModifiedtime': instance.galModifiedtime,
      'galPhotographyMonth': instance.galPhotographyMonth,
      'galPhotographyLocation': instance.galPhotographyLocation,
      'galPhotographer': instance.galPhotographer,
      'galSearchKeyword': instance.galSearchKeyword,
    };
