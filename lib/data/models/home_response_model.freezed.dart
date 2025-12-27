// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HomeResponseModel _$HomeResponseModelFromJson(Map<String, dynamic> json) {
  return _HomeResponseModel.fromJson(json);
}

/// @nodoc
mixin _$HomeResponseModel {
  int get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner1')
  List<BannerModel> get banners => throw _privateConstructorUsedError;
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  List<ProductModel> get newarrivals => throw _privateConstructorUsedError;
  List<BrandModel> get featuredbrands => throw _privateConstructorUsedError;
  int get cartcount => throw _privateConstructorUsedError;
  CurrencyModel? get currency => throw _privateConstructorUsedError;

  /// Serializes this HomeResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeResponseModelCopyWith<HomeResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeResponseModelCopyWith<$Res> {
  factory $HomeResponseModelCopyWith(
    HomeResponseModel value,
    $Res Function(HomeResponseModel) then,
  ) = _$HomeResponseModelCopyWithImpl<$Res, HomeResponseModel>;
  @useResult
  $Res call({
    int success,
    String? message,
    @JsonKey(name: 'banner1') List<BannerModel> banners,
    List<CategoryModel> categories,
    List<ProductModel> newarrivals,
    List<BrandModel> featuredbrands,
    int cartcount,
    CurrencyModel? currency,
  });

  $CurrencyModelCopyWith<$Res>? get currency;
}

/// @nodoc
class _$HomeResponseModelCopyWithImpl<$Res, $Val extends HomeResponseModel>
    implements $HomeResponseModelCopyWith<$Res> {
  _$HomeResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? banners = null,
    Object? categories = null,
    Object? newarrivals = null,
    Object? featuredbrands = null,
    Object? cartcount = null,
    Object? currency = freezed,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as int,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            banners: null == banners
                ? _value.banners
                : banners // ignore: cast_nullable_to_non_nullable
                      as List<BannerModel>,
            categories: null == categories
                ? _value.categories
                : categories // ignore: cast_nullable_to_non_nullable
                      as List<CategoryModel>,
            newarrivals: null == newarrivals
                ? _value.newarrivals
                : newarrivals // ignore: cast_nullable_to_non_nullable
                      as List<ProductModel>,
            featuredbrands: null == featuredbrands
                ? _value.featuredbrands
                : featuredbrands // ignore: cast_nullable_to_non_nullable
                      as List<BrandModel>,
            cartcount: null == cartcount
                ? _value.cartcount
                : cartcount // ignore: cast_nullable_to_non_nullable
                      as int,
            currency: freezed == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                      as CurrencyModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of HomeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyModelCopyWith<$Res>? get currency {
    if (_value.currency == null) {
      return null;
    }

    return $CurrencyModelCopyWith<$Res>(_value.currency!, (value) {
      return _then(_value.copyWith(currency: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeResponseModelImplCopyWith<$Res>
    implements $HomeResponseModelCopyWith<$Res> {
  factory _$$HomeResponseModelImplCopyWith(
    _$HomeResponseModelImpl value,
    $Res Function(_$HomeResponseModelImpl) then,
  ) = __$$HomeResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int success,
    String? message,
    @JsonKey(name: 'banner1') List<BannerModel> banners,
    List<CategoryModel> categories,
    List<ProductModel> newarrivals,
    List<BrandModel> featuredbrands,
    int cartcount,
    CurrencyModel? currency,
  });

  @override
  $CurrencyModelCopyWith<$Res>? get currency;
}

/// @nodoc
class __$$HomeResponseModelImplCopyWithImpl<$Res>
    extends _$HomeResponseModelCopyWithImpl<$Res, _$HomeResponseModelImpl>
    implements _$$HomeResponseModelImplCopyWith<$Res> {
  __$$HomeResponseModelImplCopyWithImpl(
    _$HomeResponseModelImpl _value,
    $Res Function(_$HomeResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? banners = null,
    Object? categories = null,
    Object? newarrivals = null,
    Object? featuredbrands = null,
    Object? cartcount = null,
    Object? currency = freezed,
  }) {
    return _then(
      _$HomeResponseModelImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as int,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        banners: null == banners
            ? _value._banners
            : banners // ignore: cast_nullable_to_non_nullable
                  as List<BannerModel>,
        categories: null == categories
            ? _value._categories
            : categories // ignore: cast_nullable_to_non_nullable
                  as List<CategoryModel>,
        newarrivals: null == newarrivals
            ? _value._newarrivals
            : newarrivals // ignore: cast_nullable_to_non_nullable
                  as List<ProductModel>,
        featuredbrands: null == featuredbrands
            ? _value._featuredbrands
            : featuredbrands // ignore: cast_nullable_to_non_nullable
                  as List<BrandModel>,
        cartcount: null == cartcount
            ? _value.cartcount
            : cartcount // ignore: cast_nullable_to_non_nullable
                  as int,
        currency: freezed == currency
            ? _value.currency
            : currency // ignore: cast_nullable_to_non_nullable
                  as CurrencyModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeResponseModelImpl implements _HomeResponseModel {
  const _$HomeResponseModelImpl({
    this.success = 0,
    this.message,
    @JsonKey(name: 'banner1') final List<BannerModel> banners = const [],
    final List<CategoryModel> categories = const [],
    final List<ProductModel> newarrivals = const [],
    final List<BrandModel> featuredbrands = const [],
    this.cartcount = 0,
    this.currency,
  }) : _banners = banners,
       _categories = categories,
       _newarrivals = newarrivals,
       _featuredbrands = featuredbrands;

  factory _$HomeResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeResponseModelImplFromJson(json);

  @override
  @JsonKey()
  final int success;
  @override
  final String? message;
  final List<BannerModel> _banners;
  @override
  @JsonKey(name: 'banner1')
  List<BannerModel> get banners {
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banners);
  }

  final List<CategoryModel> _categories;
  @override
  @JsonKey()
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<ProductModel> _newarrivals;
  @override
  @JsonKey()
  List<ProductModel> get newarrivals {
    if (_newarrivals is EqualUnmodifiableListView) return _newarrivals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newarrivals);
  }

  final List<BrandModel> _featuredbrands;
  @override
  @JsonKey()
  List<BrandModel> get featuredbrands {
    if (_featuredbrands is EqualUnmodifiableListView) return _featuredbrands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_featuredbrands);
  }

  @override
  @JsonKey()
  final int cartcount;
  @override
  final CurrencyModel? currency;

  @override
  String toString() {
    return 'HomeResponseModel(success: $success, message: $message, banners: $banners, categories: $categories, newarrivals: $newarrivals, featuredbrands: $featuredbrands, cartcount: $cartcount, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._banners, _banners) &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            const DeepCollectionEquality().equals(
              other._newarrivals,
              _newarrivals,
            ) &&
            const DeepCollectionEquality().equals(
              other._featuredbrands,
              _featuredbrands,
            ) &&
            (identical(other.cartcount, cartcount) ||
                other.cartcount == cartcount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    message,
    const DeepCollectionEquality().hash(_banners),
    const DeepCollectionEquality().hash(_categories),
    const DeepCollectionEquality().hash(_newarrivals),
    const DeepCollectionEquality().hash(_featuredbrands),
    cartcount,
    currency,
  );

  /// Create a copy of HomeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeResponseModelImplCopyWith<_$HomeResponseModelImpl> get copyWith =>
      __$$HomeResponseModelImplCopyWithImpl<_$HomeResponseModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeResponseModelImplToJson(this);
  }
}

abstract class _HomeResponseModel implements HomeResponseModel {
  const factory _HomeResponseModel({
    final int success,
    final String? message,
    @JsonKey(name: 'banner1') final List<BannerModel> banners,
    final List<CategoryModel> categories,
    final List<ProductModel> newarrivals,
    final List<BrandModel> featuredbrands,
    final int cartcount,
    final CurrencyModel? currency,
  }) = _$HomeResponseModelImpl;

  factory _HomeResponseModel.fromJson(Map<String, dynamic> json) =
      _$HomeResponseModelImpl.fromJson;

  @override
  int get success;
  @override
  String? get message;
  @override
  @JsonKey(name: 'banner1')
  List<BannerModel> get banners;
  @override
  List<CategoryModel> get categories;
  @override
  List<ProductModel> get newarrivals;
  @override
  List<BrandModel> get featuredbrands;
  @override
  int get cartcount;
  @override
  CurrencyModel? get currency;

  /// Create a copy of HomeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeResponseModelImplCopyWith<_$HomeResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
