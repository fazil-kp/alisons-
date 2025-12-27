import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/utils/json_converters.dart';
import 'banner_model.dart';
import 'category_model.dart';
import 'product_model.dart';
import 'brand_model.dart';
import 'currency_model.dart';

part 'home_response_model.freezed.dart';
part 'home_response_model.g.dart';

@freezed
class HomeResponseModel with _$HomeResponseModel {
  const factory HomeResponseModel({
    @IntConverter() @Default(0) int success,
    String? message,
    @JsonKey(name: 'banner1') @Default([]) List<BannerModel> banners,
    @Default([]) List<CategoryModel> categories,
    @Default([]) List<ProductModel> newarrivals,
    @Default([]) List<BrandModel> featuredbrands,
    @IntConverter() @Default(0) int cartcount,
    CurrencyModel? currency,
  }) = _HomeResponseModel;

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseModelFromJson(json);
}

