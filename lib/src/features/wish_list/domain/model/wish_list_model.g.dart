// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_list_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WishListModelAdapter extends TypeAdapter<WishListModel> {
  @override
  final int typeId = 1;

  @override
  WishListModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WishListModel(
      galContentId: fields[0] as String,
      galTitle: fields[2] as String,
      galWebImageUrl: fields[3] as String,
      galPhotographyMonth: fields[4] as String,
      galPhotographyLocation: fields[5] as String,
      galPhotographer: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, WishListModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.galContentId)
      ..writeByte(2)
      ..write(obj.galTitle)
      ..writeByte(3)
      ..write(obj.galWebImageUrl)
      ..writeByte(4)
      ..write(obj.galPhotographyMonth)
      ..writeByte(5)
      ..write(obj.galPhotographyLocation)
      ..writeByte(6)
      ..write(obj.galPhotographer);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WishListModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WishListModel _$$_WishListModelFromJson(Map<String, dynamic> json) =>
    _$_WishListModel(
      galContentId: json['galContentId'] as String,
      galTitle: json['galTitle'] as String,
      galWebImageUrl: json['galWebImageUrl'] as String,
      galPhotographyMonth: json['galPhotographyMonth'] as String,
      galPhotographyLocation: json['galPhotographyLocation'] as String,
      galPhotographer: json['galPhotographer'] as String,
    );

Map<String, dynamic> _$$_WishListModelToJson(_$_WishListModel instance) =>
    <String, dynamic>{
      'galContentId': instance.galContentId,
      'galTitle': instance.galTitle,
      'galWebImageUrl': instance.galWebImageUrl,
      'galPhotographyMonth': instance.galPhotographyMonth,
      'galPhotographyLocation': instance.galPhotographyLocation,
      'galPhotographer': instance.galPhotographer,
    };
