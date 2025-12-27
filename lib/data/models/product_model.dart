import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    @Default(0) int id,
    @Default('') String name,
    String? slug,
    String? description,
    @JsonKey(name: 'image') String? imageUrl,
    @JsonKey(name: 'price') @Default(0.0) double currentPrice,
    @JsonKey(name: 'original_price') double? originalPrice,
    @JsonKey(name: 'discount_percentage') double? discountPercentage,
    String? category,
    @JsonKey(name: 'category_slug') String? categorySlug,
    @JsonKey(name: 'in_stock') @Default(true) bool inStock,
    @JsonKey(name: 'quantity') @Default(0) int quantity,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

