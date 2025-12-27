import 'package:freezed_annotation/freezed_annotation.dart';
import 'product_model.dart';

part 'products_response_model.freezed.dart';
part 'products_response_model.g.dart';

@freezed
class ProductsResponseModel with _$ProductsResponseModel {
  const factory ProductsResponseModel({
    @Default([]) List<ProductModel> products,
    @JsonKey(name: 'total') @Default(0) int total,
    @JsonKey(name: 'page') @Default(1) int page,
    @JsonKey(name: 'per_page') @Default(20) int perPage,
  }) = _ProductsResponseModel;

  factory ProductsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseModelFromJson(json);
}

