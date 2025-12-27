import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/utils/json_converters.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    @IntConverter() @Default(0) int id,
    @Default('') String name,
    String? slug,
    String? description,
    @JsonKey(name: 'image') String? imageUrl,
    @JsonKey(name: 'price') @DoubleConverter() @Default(0.0) double currentPrice,
    @JsonKey(name: 'original_price') @NullableDoubleConverter() double? originalPrice,
    @JsonKey(name: 'discount_percentage') @NullableDoubleConverter() double? discountPercentage,
    String? category,
    @JsonKey(name: 'category_slug') String? categorySlug,
    @JsonKey(name: 'in_stock') @Default(true) bool inStock,
    @JsonKey(name: 'quantity') @IntConverter() @Default(0) int quantity,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

