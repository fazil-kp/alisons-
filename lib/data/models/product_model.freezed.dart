// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double get currentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_price')
  double? get originalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_percentage')
  double? get discountPercentage => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_slug')
  String? get categorySlug => throw _privateConstructorUsedError;
  @JsonKey(name: 'in_stock')
  bool get inStock => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int get quantity => throw _privateConstructorUsedError;

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
    ProductModel value,
    $Res Function(ProductModel) then,
  ) = _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call({
    int id,
    String name,
    String? slug,
    String? description,
    @JsonKey(name: 'image') String? imageUrl,
    @JsonKey(name: 'price') double currentPrice,
    @JsonKey(name: 'original_price') double? originalPrice,
    @JsonKey(name: 'discount_percentage') double? discountPercentage,
    String? category,
    @JsonKey(name: 'category_slug') String? categorySlug,
    @JsonKey(name: 'in_stock') bool inStock,
    @JsonKey(name: 'quantity') int quantity,
  });
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? currentPrice = null,
    Object? originalPrice = freezed,
    Object? discountPercentage = freezed,
    Object? category = freezed,
    Object? categorySlug = freezed,
    Object? inStock = null,
    Object? quantity = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            slug: freezed == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            currentPrice: null == currentPrice
                ? _value.currentPrice
                : currentPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            originalPrice: freezed == originalPrice
                ? _value.originalPrice
                : originalPrice // ignore: cast_nullable_to_non_nullable
                      as double?,
            discountPercentage: freezed == discountPercentage
                ? _value.discountPercentage
                : discountPercentage // ignore: cast_nullable_to_non_nullable
                      as double?,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String?,
            categorySlug: freezed == categorySlug
                ? _value.categorySlug
                : categorySlug // ignore: cast_nullable_to_non_nullable
                      as String?,
            inStock: null == inStock
                ? _value.inStock
                : inStock // ignore: cast_nullable_to_non_nullable
                      as bool,
            quantity: null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
    _$ProductModelImpl value,
    $Res Function(_$ProductModelImpl) then,
  ) = __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String? slug,
    String? description,
    @JsonKey(name: 'image') String? imageUrl,
    @JsonKey(name: 'price') double currentPrice,
    @JsonKey(name: 'original_price') double? originalPrice,
    @JsonKey(name: 'discount_percentage') double? discountPercentage,
    String? category,
    @JsonKey(name: 'category_slug') String? categorySlug,
    @JsonKey(name: 'in_stock') bool inStock,
    @JsonKey(name: 'quantity') int quantity,
  });
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
    _$ProductModelImpl _value,
    $Res Function(_$ProductModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? currentPrice = null,
    Object? originalPrice = freezed,
    Object? discountPercentage = freezed,
    Object? category = freezed,
    Object? categorySlug = freezed,
    Object? inStock = null,
    Object? quantity = null,
  }) {
    return _then(
      _$ProductModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        slug: freezed == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        currentPrice: null == currentPrice
            ? _value.currentPrice
            : currentPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        originalPrice: freezed == originalPrice
            ? _value.originalPrice
            : originalPrice // ignore: cast_nullable_to_non_nullable
                  as double?,
        discountPercentage: freezed == discountPercentage
            ? _value.discountPercentage
            : discountPercentage // ignore: cast_nullable_to_non_nullable
                  as double?,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String?,
        categorySlug: freezed == categorySlug
            ? _value.categorySlug
            : categorySlug // ignore: cast_nullable_to_non_nullable
                  as String?,
        inStock: null == inStock
            ? _value.inStock
            : inStock // ignore: cast_nullable_to_non_nullable
                  as bool,
        quantity: null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  const _$ProductModelImpl({
    this.id = 0,
    required this.name,
    this.slug,
    this.description,
    @JsonKey(name: 'image') this.imageUrl,
    @JsonKey(name: 'price') this.currentPrice = 0.0,
    @JsonKey(name: 'original_price') this.originalPrice,
    @JsonKey(name: 'discount_percentage') this.discountPercentage,
    this.category,
    @JsonKey(name: 'category_slug') this.categorySlug,
    @JsonKey(name: 'in_stock') this.inStock = true,
    @JsonKey(name: 'quantity') this.quantity = 0,
  });

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final String name;
  @override
  final String? slug;
  @override
  final String? description;
  @override
  @JsonKey(name: 'image')
  final String? imageUrl;
  @override
  @JsonKey(name: 'price')
  final double currentPrice;
  @override
  @JsonKey(name: 'original_price')
  final double? originalPrice;
  @override
  @JsonKey(name: 'discount_percentage')
  final double? discountPercentage;
  @override
  final String? category;
  @override
  @JsonKey(name: 'category_slug')
  final String? categorySlug;
  @override
  @JsonKey(name: 'in_stock')
  final bool inStock;
  @override
  @JsonKey(name: 'quantity')
  final int quantity;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, slug: $slug, description: $description, imageUrl: $imageUrl, currentPrice: $currentPrice, originalPrice: $originalPrice, discountPercentage: $discountPercentage, category: $category, categorySlug: $categorySlug, inStock: $inStock, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.categorySlug, categorySlug) ||
                other.categorySlug == categorySlug) &&
            (identical(other.inStock, inStock) || other.inStock == inStock) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    slug,
    description,
    imageUrl,
    currentPrice,
    originalPrice,
    discountPercentage,
    category,
    categorySlug,
    inStock,
    quantity,
  );

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(this);
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel({
    final int id,
    required final String name,
    final String? slug,
    final String? description,
    @JsonKey(name: 'image') final String? imageUrl,
    @JsonKey(name: 'price') final double currentPrice,
    @JsonKey(name: 'original_price') final double? originalPrice,
    @JsonKey(name: 'discount_percentage') final double? discountPercentage,
    final String? category,
    @JsonKey(name: 'category_slug') final String? categorySlug,
    @JsonKey(name: 'in_stock') final bool inStock,
    @JsonKey(name: 'quantity') final int quantity,
  }) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get slug;
  @override
  String? get description;
  @override
  @JsonKey(name: 'image')
  String? get imageUrl;
  @override
  @JsonKey(name: 'price')
  double get currentPrice;
  @override
  @JsonKey(name: 'original_price')
  double? get originalPrice;
  @override
  @JsonKey(name: 'discount_percentage')
  double? get discountPercentage;
  @override
  String? get category;
  @override
  @JsonKey(name: 'category_slug')
  String? get categorySlug;
  @override
  @JsonKey(name: 'in_stock')
  bool get inStock;
  @override
  @JsonKey(name: 'quantity')
  int get quantity;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
