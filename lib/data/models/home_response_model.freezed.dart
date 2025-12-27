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
  @JsonKey(name: 'banners')
  List<BannerModel> get banners => throw _privateConstructorUsedError;
  @JsonKey(name: 'categories')
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  @JsonKey(name: 'featured_products')
  List<ProductModel> get featuredProducts => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_best_selling')
  List<ProductModel> get dailyBestSelling => throw _privateConstructorUsedError;
  @JsonKey(name: 'recently_added')
  List<ProductModel> get recentlyAdded => throw _privateConstructorUsedError;
  @JsonKey(name: 'popular_products')
  List<ProductModel> get popularProducts => throw _privateConstructorUsedError;
  @JsonKey(name: 'trending_products')
  List<ProductModel> get trendingProducts => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'banners') List<BannerModel> banners,
    @JsonKey(name: 'categories') List<CategoryModel> categories,
    @JsonKey(name: 'featured_products') List<ProductModel> featuredProducts,
    @JsonKey(name: 'daily_best_selling') List<ProductModel> dailyBestSelling,
    @JsonKey(name: 'recently_added') List<ProductModel> recentlyAdded,
    @JsonKey(name: 'popular_products') List<ProductModel> popularProducts,
    @JsonKey(name: 'trending_products') List<ProductModel> trendingProducts,
  });
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
    Object? banners = null,
    Object? categories = null,
    Object? featuredProducts = null,
    Object? dailyBestSelling = null,
    Object? recentlyAdded = null,
    Object? popularProducts = null,
    Object? trendingProducts = null,
  }) {
    return _then(
      _value.copyWith(
            banners: null == banners
                ? _value.banners
                : banners // ignore: cast_nullable_to_non_nullable
                      as List<BannerModel>,
            categories: null == categories
                ? _value.categories
                : categories // ignore: cast_nullable_to_non_nullable
                      as List<CategoryModel>,
            featuredProducts: null == featuredProducts
                ? _value.featuredProducts
                : featuredProducts // ignore: cast_nullable_to_non_nullable
                      as List<ProductModel>,
            dailyBestSelling: null == dailyBestSelling
                ? _value.dailyBestSelling
                : dailyBestSelling // ignore: cast_nullable_to_non_nullable
                      as List<ProductModel>,
            recentlyAdded: null == recentlyAdded
                ? _value.recentlyAdded
                : recentlyAdded // ignore: cast_nullable_to_non_nullable
                      as List<ProductModel>,
            popularProducts: null == popularProducts
                ? _value.popularProducts
                : popularProducts // ignore: cast_nullable_to_non_nullable
                      as List<ProductModel>,
            trendingProducts: null == trendingProducts
                ? _value.trendingProducts
                : trendingProducts // ignore: cast_nullable_to_non_nullable
                      as List<ProductModel>,
          )
          as $Val,
    );
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
    @JsonKey(name: 'banners') List<BannerModel> banners,
    @JsonKey(name: 'categories') List<CategoryModel> categories,
    @JsonKey(name: 'featured_products') List<ProductModel> featuredProducts,
    @JsonKey(name: 'daily_best_selling') List<ProductModel> dailyBestSelling,
    @JsonKey(name: 'recently_added') List<ProductModel> recentlyAdded,
    @JsonKey(name: 'popular_products') List<ProductModel> popularProducts,
    @JsonKey(name: 'trending_products') List<ProductModel> trendingProducts,
  });
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
    Object? banners = null,
    Object? categories = null,
    Object? featuredProducts = null,
    Object? dailyBestSelling = null,
    Object? recentlyAdded = null,
    Object? popularProducts = null,
    Object? trendingProducts = null,
  }) {
    return _then(
      _$HomeResponseModelImpl(
        banners: null == banners
            ? _value._banners
            : banners // ignore: cast_nullable_to_non_nullable
                  as List<BannerModel>,
        categories: null == categories
            ? _value._categories
            : categories // ignore: cast_nullable_to_non_nullable
                  as List<CategoryModel>,
        featuredProducts: null == featuredProducts
            ? _value._featuredProducts
            : featuredProducts // ignore: cast_nullable_to_non_nullable
                  as List<ProductModel>,
        dailyBestSelling: null == dailyBestSelling
            ? _value._dailyBestSelling
            : dailyBestSelling // ignore: cast_nullable_to_non_nullable
                  as List<ProductModel>,
        recentlyAdded: null == recentlyAdded
            ? _value._recentlyAdded
            : recentlyAdded // ignore: cast_nullable_to_non_nullable
                  as List<ProductModel>,
        popularProducts: null == popularProducts
            ? _value._popularProducts
            : popularProducts // ignore: cast_nullable_to_non_nullable
                  as List<ProductModel>,
        trendingProducts: null == trendingProducts
            ? _value._trendingProducts
            : trendingProducts // ignore: cast_nullable_to_non_nullable
                  as List<ProductModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeResponseModelImpl implements _HomeResponseModel {
  const _$HomeResponseModelImpl({
    @JsonKey(name: 'banners') final List<BannerModel> banners = const [],
    @JsonKey(name: 'categories')
    final List<CategoryModel> categories = const [],
    @JsonKey(name: 'featured_products')
    final List<ProductModel> featuredProducts = const [],
    @JsonKey(name: 'daily_best_selling')
    final List<ProductModel> dailyBestSelling = const [],
    @JsonKey(name: 'recently_added')
    final List<ProductModel> recentlyAdded = const [],
    @JsonKey(name: 'popular_products')
    final List<ProductModel> popularProducts = const [],
    @JsonKey(name: 'trending_products')
    final List<ProductModel> trendingProducts = const [],
  }) : _banners = banners,
       _categories = categories,
       _featuredProducts = featuredProducts,
       _dailyBestSelling = dailyBestSelling,
       _recentlyAdded = recentlyAdded,
       _popularProducts = popularProducts,
       _trendingProducts = trendingProducts;

  factory _$HomeResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeResponseModelImplFromJson(json);

  final List<BannerModel> _banners;
  @override
  @JsonKey(name: 'banners')
  List<BannerModel> get banners {
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banners);
  }

  final List<CategoryModel> _categories;
  @override
  @JsonKey(name: 'categories')
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<ProductModel> _featuredProducts;
  @override
  @JsonKey(name: 'featured_products')
  List<ProductModel> get featuredProducts {
    if (_featuredProducts is EqualUnmodifiableListView)
      return _featuredProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_featuredProducts);
  }

  final List<ProductModel> _dailyBestSelling;
  @override
  @JsonKey(name: 'daily_best_selling')
  List<ProductModel> get dailyBestSelling {
    if (_dailyBestSelling is EqualUnmodifiableListView)
      return _dailyBestSelling;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dailyBestSelling);
  }

  final List<ProductModel> _recentlyAdded;
  @override
  @JsonKey(name: 'recently_added')
  List<ProductModel> get recentlyAdded {
    if (_recentlyAdded is EqualUnmodifiableListView) return _recentlyAdded;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentlyAdded);
  }

  final List<ProductModel> _popularProducts;
  @override
  @JsonKey(name: 'popular_products')
  List<ProductModel> get popularProducts {
    if (_popularProducts is EqualUnmodifiableListView) return _popularProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularProducts);
  }

  final List<ProductModel> _trendingProducts;
  @override
  @JsonKey(name: 'trending_products')
  List<ProductModel> get trendingProducts {
    if (_trendingProducts is EqualUnmodifiableListView)
      return _trendingProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingProducts);
  }

  @override
  String toString() {
    return 'HomeResponseModel(banners: $banners, categories: $categories, featuredProducts: $featuredProducts, dailyBestSelling: $dailyBestSelling, recentlyAdded: $recentlyAdded, popularProducts: $popularProducts, trendingProducts: $trendingProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeResponseModelImpl &&
            const DeepCollectionEquality().equals(other._banners, _banners) &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            const DeepCollectionEquality().equals(
              other._featuredProducts,
              _featuredProducts,
            ) &&
            const DeepCollectionEquality().equals(
              other._dailyBestSelling,
              _dailyBestSelling,
            ) &&
            const DeepCollectionEquality().equals(
              other._recentlyAdded,
              _recentlyAdded,
            ) &&
            const DeepCollectionEquality().equals(
              other._popularProducts,
              _popularProducts,
            ) &&
            const DeepCollectionEquality().equals(
              other._trendingProducts,
              _trendingProducts,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_banners),
    const DeepCollectionEquality().hash(_categories),
    const DeepCollectionEquality().hash(_featuredProducts),
    const DeepCollectionEquality().hash(_dailyBestSelling),
    const DeepCollectionEquality().hash(_recentlyAdded),
    const DeepCollectionEquality().hash(_popularProducts),
    const DeepCollectionEquality().hash(_trendingProducts),
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
    @JsonKey(name: 'banners') final List<BannerModel> banners,
    @JsonKey(name: 'categories') final List<CategoryModel> categories,
    @JsonKey(name: 'featured_products')
    final List<ProductModel> featuredProducts,
    @JsonKey(name: 'daily_best_selling')
    final List<ProductModel> dailyBestSelling,
    @JsonKey(name: 'recently_added') final List<ProductModel> recentlyAdded,
    @JsonKey(name: 'popular_products') final List<ProductModel> popularProducts,
    @JsonKey(name: 'trending_products')
    final List<ProductModel> trendingProducts,
  }) = _$HomeResponseModelImpl;

  factory _HomeResponseModel.fromJson(Map<String, dynamic> json) =
      _$HomeResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'banners')
  List<BannerModel> get banners;
  @override
  @JsonKey(name: 'categories')
  List<CategoryModel> get categories;
  @override
  @JsonKey(name: 'featured_products')
  List<ProductModel> get featuredProducts;
  @override
  @JsonKey(name: 'daily_best_selling')
  List<ProductModel> get dailyBestSelling;
  @override
  @JsonKey(name: 'recently_added')
  List<ProductModel> get recentlyAdded;
  @override
  @JsonKey(name: 'popular_products')
  List<ProductModel> get popularProducts;
  @override
  @JsonKey(name: 'trending_products')
  List<ProductModel> get trendingProducts;

  /// Create a copy of HomeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeResponseModelImplCopyWith<_$HomeResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
