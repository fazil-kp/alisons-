// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductsResponseModel _$ProductsResponseModelFromJson(
  Map<String, dynamic> json,
) {
  return _ProductsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ProductsResponseModel {
  List<ProductModel> get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int get perPage => throw _privateConstructorUsedError;

  /// Serializes this ProductsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsResponseModelCopyWith<ProductsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsResponseModelCopyWith<$Res> {
  factory $ProductsResponseModelCopyWith(
    ProductsResponseModel value,
    $Res Function(ProductsResponseModel) then,
  ) = _$ProductsResponseModelCopyWithImpl<$Res, ProductsResponseModel>;
  @useResult
  $Res call({
    List<ProductModel> products,
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'page') int page,
    @JsonKey(name: 'per_page') int perPage,
  });
}

/// @nodoc
class _$ProductsResponseModelCopyWithImpl<
  $Res,
  $Val extends ProductsResponseModel
>
    implements $ProductsResponseModelCopyWith<$Res> {
  _$ProductsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(
      _value.copyWith(
            products: null == products
                ? _value.products
                : products // ignore: cast_nullable_to_non_nullable
                      as List<ProductModel>,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            perPage: null == perPage
                ? _value.perPage
                : perPage // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductsResponseModelImplCopyWith<$Res>
    implements $ProductsResponseModelCopyWith<$Res> {
  factory _$$ProductsResponseModelImplCopyWith(
    _$ProductsResponseModelImpl value,
    $Res Function(_$ProductsResponseModelImpl) then,
  ) = __$$ProductsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ProductModel> products,
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'page') int page,
    @JsonKey(name: 'per_page') int perPage,
  });
}

/// @nodoc
class __$$ProductsResponseModelImplCopyWithImpl<$Res>
    extends
        _$ProductsResponseModelCopyWithImpl<$Res, _$ProductsResponseModelImpl>
    implements _$$ProductsResponseModelImplCopyWith<$Res> {
  __$$ProductsResponseModelImplCopyWithImpl(
    _$ProductsResponseModelImpl _value,
    $Res Function(_$ProductsResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(
      _$ProductsResponseModelImpl(
        products: null == products
            ? _value._products
            : products // ignore: cast_nullable_to_non_nullable
                  as List<ProductModel>,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        perPage: null == perPage
            ? _value.perPage
            : perPage // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsResponseModelImpl implements _ProductsResponseModel {
  const _$ProductsResponseModelImpl({
    final List<ProductModel> products = const [],
    @JsonKey(name: 'total') this.total = 0,
    @JsonKey(name: 'page') this.page = 1,
    @JsonKey(name: 'per_page') this.perPage = 20,
  }) : _products = products;

  factory _$ProductsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsResponseModelImplFromJson(json);

  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey(name: 'total')
  final int total;
  @override
  @JsonKey(name: 'page')
  final int page;
  @override
  @JsonKey(name: 'per_page')
  final int perPage;

  @override
  String toString() {
    return 'ProductsResponseModel(products: $products, total: $total, page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsResponseModelImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_products),
    total,
    page,
    perPage,
  );

  /// Create a copy of ProductsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsResponseModelImplCopyWith<_$ProductsResponseModelImpl>
  get copyWith =>
      __$$ProductsResponseModelImplCopyWithImpl<_$ProductsResponseModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsResponseModelImplToJson(this);
  }
}

abstract class _ProductsResponseModel implements ProductsResponseModel {
  const factory _ProductsResponseModel({
    final List<ProductModel> products,
    @JsonKey(name: 'total') final int total,
    @JsonKey(name: 'page') final int page,
    @JsonKey(name: 'per_page') final int perPage,
  }) = _$ProductsResponseModelImpl;

  factory _ProductsResponseModel.fromJson(Map<String, dynamic> json) =
      _$ProductsResponseModelImpl.fromJson;

  @override
  List<ProductModel> get products;
  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(name: 'per_page')
  int get perPage;

  /// Create a copy of ProductsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsResponseModelImplCopyWith<_$ProductsResponseModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
