// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) {
  return _BannerModel.fromJson(json);
}

/// @nodoc
mixin _$BannerModel {
  @IntConverter()
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'link_type')
  @IntConverter()
  int get linkType => throw _privateConstructorUsedError;
  @JsonKey(name: 'link_value')
  String? get linkValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get video => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_title')
  String? get subTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'button_text')
  String? get buttonText => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;

  /// Serializes this BannerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BannerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannerModelCopyWith<BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerModelCopyWith<$Res> {
  factory $BannerModelCopyWith(
    BannerModel value,
    $Res Function(BannerModel) then,
  ) = _$BannerModelCopyWithImpl<$Res, BannerModel>;
  @useResult
  $Res call({
    @IntConverter() int id,
    @JsonKey(name: 'link_type') @IntConverter() int linkType,
    @JsonKey(name: 'link_value') String? linkValue,
    @JsonKey(name: 'image') String? imageUrl,
    String? video,
    String? title,
    @JsonKey(name: 'sub_title') String? subTitle,
    @JsonKey(name: 'button_text') String? buttonText,
    String? logo,
  });
}

/// @nodoc
class _$BannerModelCopyWithImpl<$Res, $Val extends BannerModel>
    implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? linkType = null,
    Object? linkValue = freezed,
    Object? imageUrl = freezed,
    Object? video = freezed,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? buttonText = freezed,
    Object? logo = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            linkType: null == linkType
                ? _value.linkType
                : linkType // ignore: cast_nullable_to_non_nullable
                      as int,
            linkValue: freezed == linkValue
                ? _value.linkValue
                : linkValue // ignore: cast_nullable_to_non_nullable
                      as String?,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            video: freezed == video
                ? _value.video
                : video // ignore: cast_nullable_to_non_nullable
                      as String?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            subTitle: freezed == subTitle
                ? _value.subTitle
                : subTitle // ignore: cast_nullable_to_non_nullable
                      as String?,
            buttonText: freezed == buttonText
                ? _value.buttonText
                : buttonText // ignore: cast_nullable_to_non_nullable
                      as String?,
            logo: freezed == logo
                ? _value.logo
                : logo // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BannerModelImplCopyWith<$Res>
    implements $BannerModelCopyWith<$Res> {
  factory _$$BannerModelImplCopyWith(
    _$BannerModelImpl value,
    $Res Function(_$BannerModelImpl) then,
  ) = __$$BannerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @IntConverter() int id,
    @JsonKey(name: 'link_type') @IntConverter() int linkType,
    @JsonKey(name: 'link_value') String? linkValue,
    @JsonKey(name: 'image') String? imageUrl,
    String? video,
    String? title,
    @JsonKey(name: 'sub_title') String? subTitle,
    @JsonKey(name: 'button_text') String? buttonText,
    String? logo,
  });
}

/// @nodoc
class __$$BannerModelImplCopyWithImpl<$Res>
    extends _$BannerModelCopyWithImpl<$Res, _$BannerModelImpl>
    implements _$$BannerModelImplCopyWith<$Res> {
  __$$BannerModelImplCopyWithImpl(
    _$BannerModelImpl _value,
    $Res Function(_$BannerModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BannerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? linkType = null,
    Object? linkValue = freezed,
    Object? imageUrl = freezed,
    Object? video = freezed,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? buttonText = freezed,
    Object? logo = freezed,
  }) {
    return _then(
      _$BannerModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        linkType: null == linkType
            ? _value.linkType
            : linkType // ignore: cast_nullable_to_non_nullable
                  as int,
        linkValue: freezed == linkValue
            ? _value.linkValue
            : linkValue // ignore: cast_nullable_to_non_nullable
                  as String?,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        video: freezed == video
            ? _value.video
            : video // ignore: cast_nullable_to_non_nullable
                  as String?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        subTitle: freezed == subTitle
            ? _value.subTitle
            : subTitle // ignore: cast_nullable_to_non_nullable
                  as String?,
        buttonText: freezed == buttonText
            ? _value.buttonText
            : buttonText // ignore: cast_nullable_to_non_nullable
                  as String?,
        logo: freezed == logo
            ? _value.logo
            : logo // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerModelImpl implements _BannerModel {
  const _$BannerModelImpl({
    @IntConverter() this.id = 0,
    @JsonKey(name: 'link_type') @IntConverter() this.linkType = 0,
    @JsonKey(name: 'link_value') this.linkValue,
    @JsonKey(name: 'image') this.imageUrl,
    this.video,
    this.title,
    @JsonKey(name: 'sub_title') this.subTitle,
    @JsonKey(name: 'button_text') this.buttonText,
    this.logo,
  });

  factory _$BannerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerModelImplFromJson(json);

  @override
  @JsonKey()
  @IntConverter()
  final int id;
  @override
  @JsonKey(name: 'link_type')
  @IntConverter()
  final int linkType;
  @override
  @JsonKey(name: 'link_value')
  final String? linkValue;
  @override
  @JsonKey(name: 'image')
  final String? imageUrl;
  @override
  final String? video;
  @override
  final String? title;
  @override
  @JsonKey(name: 'sub_title')
  final String? subTitle;
  @override
  @JsonKey(name: 'button_text')
  final String? buttonText;
  @override
  final String? logo;

  @override
  String toString() {
    return 'BannerModel(id: $id, linkType: $linkType, linkValue: $linkValue, imageUrl: $imageUrl, video: $video, title: $title, subTitle: $subTitle, buttonText: $buttonText, logo: $logo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.linkType, linkType) ||
                other.linkType == linkType) &&
            (identical(other.linkValue, linkValue) ||
                other.linkValue == linkValue) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.buttonText, buttonText) ||
                other.buttonText == buttonText) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    linkType,
    linkValue,
    imageUrl,
    video,
    title,
    subTitle,
    buttonText,
    logo,
  );

  /// Create a copy of BannerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      __$$BannerModelImplCopyWithImpl<_$BannerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerModelImplToJson(this);
  }
}

abstract class _BannerModel implements BannerModel {
  const factory _BannerModel({
    @IntConverter() final int id,
    @JsonKey(name: 'link_type') @IntConverter() final int linkType,
    @JsonKey(name: 'link_value') final String? linkValue,
    @JsonKey(name: 'image') final String? imageUrl,
    final String? video,
    final String? title,
    @JsonKey(name: 'sub_title') final String? subTitle,
    @JsonKey(name: 'button_text') final String? buttonText,
    final String? logo,
  }) = _$BannerModelImpl;

  factory _BannerModel.fromJson(Map<String, dynamic> json) =
      _$BannerModelImpl.fromJson;

  @override
  @IntConverter()
  int get id;
  @override
  @JsonKey(name: 'link_type')
  @IntConverter()
  int get linkType;
  @override
  @JsonKey(name: 'link_value')
  String? get linkValue;
  @override
  @JsonKey(name: 'image')
  String? get imageUrl;
  @override
  String? get video;
  @override
  String? get title;
  @override
  @JsonKey(name: 'sub_title')
  String? get subTitle;
  @override
  @JsonKey(name: 'button_text')
  String? get buttonText;
  @override
  String? get logo;

  /// Create a copy of BannerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
