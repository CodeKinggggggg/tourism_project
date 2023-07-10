// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wish_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WishListModel _$WishListModelFromJson(Map<String, dynamic> json) {
  return _WishListModel.fromJson(json);
}

/// @nodoc
mixin _$WishListModel {
// id
  @HiveField(0)
  String get galContentId => throw _privateConstructorUsedError; // 사진 제목
  @HiveField(2)
  String get galTitle => throw _privateConstructorUsedError; // 사진 이미지 url
  @HiveField(3)
  String get galWebImageUrl => throw _privateConstructorUsedError; // 사진 찍은 월
  @HiveField(4)
  String get galPhotographyMonth =>
      throw _privateConstructorUsedError; // 사진 찍은 장소
  @HiveField(5)
  String get galPhotographyLocation =>
      throw _privateConstructorUsedError; // 사진가
  @HiveField(6)
  String get galPhotographer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishListModelCopyWith<WishListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListModelCopyWith<$Res> {
  factory $WishListModelCopyWith(
          WishListModel value, $Res Function(WishListModel) then) =
      _$WishListModelCopyWithImpl<$Res, WishListModel>;
  @useResult
  $Res call(
      {@HiveField(0) String galContentId,
      @HiveField(2) String galTitle,
      @HiveField(3) String galWebImageUrl,
      @HiveField(4) String galPhotographyMonth,
      @HiveField(5) String galPhotographyLocation,
      @HiveField(6) String galPhotographer});
}

/// @nodoc
class _$WishListModelCopyWithImpl<$Res, $Val extends WishListModel>
    implements $WishListModelCopyWith<$Res> {
  _$WishListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? galContentId = null,
    Object? galTitle = null,
    Object? galWebImageUrl = null,
    Object? galPhotographyMonth = null,
    Object? galPhotographyLocation = null,
    Object? galPhotographer = null,
  }) {
    return _then(_value.copyWith(
      galContentId: null == galContentId
          ? _value.galContentId
          : galContentId // ignore: cast_nullable_to_non_nullable
              as String,
      galTitle: null == galTitle
          ? _value.galTitle
          : galTitle // ignore: cast_nullable_to_non_nullable
              as String,
      galWebImageUrl: null == galWebImageUrl
          ? _value.galWebImageUrl
          : galWebImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      galPhotographyMonth: null == galPhotographyMonth
          ? _value.galPhotographyMonth
          : galPhotographyMonth // ignore: cast_nullable_to_non_nullable
              as String,
      galPhotographyLocation: null == galPhotographyLocation
          ? _value.galPhotographyLocation
          : galPhotographyLocation // ignore: cast_nullable_to_non_nullable
              as String,
      galPhotographer: null == galPhotographer
          ? _value.galPhotographer
          : galPhotographer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WishListModelCopyWith<$Res>
    implements $WishListModelCopyWith<$Res> {
  factory _$$_WishListModelCopyWith(
          _$_WishListModel value, $Res Function(_$_WishListModel) then) =
      __$$_WishListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String galContentId,
      @HiveField(2) String galTitle,
      @HiveField(3) String galWebImageUrl,
      @HiveField(4) String galPhotographyMonth,
      @HiveField(5) String galPhotographyLocation,
      @HiveField(6) String galPhotographer});
}

/// @nodoc
class __$$_WishListModelCopyWithImpl<$Res>
    extends _$WishListModelCopyWithImpl<$Res, _$_WishListModel>
    implements _$$_WishListModelCopyWith<$Res> {
  __$$_WishListModelCopyWithImpl(
      _$_WishListModel _value, $Res Function(_$_WishListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? galContentId = null,
    Object? galTitle = null,
    Object? galWebImageUrl = null,
    Object? galPhotographyMonth = null,
    Object? galPhotographyLocation = null,
    Object? galPhotographer = null,
  }) {
    return _then(_$_WishListModel(
      galContentId: null == galContentId
          ? _value.galContentId
          : galContentId // ignore: cast_nullable_to_non_nullable
              as String,
      galTitle: null == galTitle
          ? _value.galTitle
          : galTitle // ignore: cast_nullable_to_non_nullable
              as String,
      galWebImageUrl: null == galWebImageUrl
          ? _value.galWebImageUrl
          : galWebImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      galPhotographyMonth: null == galPhotographyMonth
          ? _value.galPhotographyMonth
          : galPhotographyMonth // ignore: cast_nullable_to_non_nullable
              as String,
      galPhotographyLocation: null == galPhotographyLocation
          ? _value.galPhotographyLocation
          : galPhotographyLocation // ignore: cast_nullable_to_non_nullable
              as String,
      galPhotographer: null == galPhotographer
          ? _value.galPhotographer
          : galPhotographer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WishListModel extends _WishListModel {
  _$_WishListModel(
      {@HiveField(0) required this.galContentId,
      @HiveField(2) required this.galTitle,
      @HiveField(3) required this.galWebImageUrl,
      @HiveField(4) required this.galPhotographyMonth,
      @HiveField(5) required this.galPhotographyLocation,
      @HiveField(6) required this.galPhotographer})
      : super._();

  factory _$_WishListModel.fromJson(Map<String, dynamic> json) =>
      _$$_WishListModelFromJson(json);

// id
  @override
  @HiveField(0)
  final String galContentId;
// 사진 제목
  @override
  @HiveField(2)
  final String galTitle;
// 사진 이미지 url
  @override
  @HiveField(3)
  final String galWebImageUrl;
// 사진 찍은 월
  @override
  @HiveField(4)
  final String galPhotographyMonth;
// 사진 찍은 장소
  @override
  @HiveField(5)
  final String galPhotographyLocation;
// 사진가
  @override
  @HiveField(6)
  final String galPhotographer;

  @override
  String toString() {
    return 'WishListModel(galContentId: $galContentId, galTitle: $galTitle, galWebImageUrl: $galWebImageUrl, galPhotographyMonth: $galPhotographyMonth, galPhotographyLocation: $galPhotographyLocation, galPhotographer: $galPhotographer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishListModel &&
            (identical(other.galContentId, galContentId) ||
                other.galContentId == galContentId) &&
            (identical(other.galTitle, galTitle) ||
                other.galTitle == galTitle) &&
            (identical(other.galWebImageUrl, galWebImageUrl) ||
                other.galWebImageUrl == galWebImageUrl) &&
            (identical(other.galPhotographyMonth, galPhotographyMonth) ||
                other.galPhotographyMonth == galPhotographyMonth) &&
            (identical(other.galPhotographyLocation, galPhotographyLocation) ||
                other.galPhotographyLocation == galPhotographyLocation) &&
            (identical(other.galPhotographer, galPhotographer) ||
                other.galPhotographer == galPhotographer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      galContentId,
      galTitle,
      galWebImageUrl,
      galPhotographyMonth,
      galPhotographyLocation,
      galPhotographer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WishListModelCopyWith<_$_WishListModel> get copyWith =>
      __$$_WishListModelCopyWithImpl<_$_WishListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WishListModelToJson(
      this,
    );
  }
}

abstract class _WishListModel extends WishListModel {
  factory _WishListModel(
      {@HiveField(0) required final String galContentId,
      @HiveField(2) required final String galTitle,
      @HiveField(3) required final String galWebImageUrl,
      @HiveField(4) required final String galPhotographyMonth,
      @HiveField(5) required final String galPhotographyLocation,
      @HiveField(6) required final String galPhotographer}) = _$_WishListModel;
  _WishListModel._() : super._();

  factory _WishListModel.fromJson(Map<String, dynamic> json) =
      _$_WishListModel.fromJson;

  @override // id
  @HiveField(0)
  String get galContentId;
  @override // 사진 제목
  @HiveField(2)
  String get galTitle;
  @override // 사진 이미지 url
  @HiveField(3)
  String get galWebImageUrl;
  @override // 사진 찍은 월
  @HiveField(4)
  String get galPhotographyMonth;
  @override // 사진 찍은 장소
  @HiveField(5)
  String get galPhotographyLocation;
  @override // 사진가
  @HiveField(6)
  String get galPhotographer;
  @override
  @JsonKey(ignore: true)
  _$$_WishListModelCopyWith<_$_WishListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
