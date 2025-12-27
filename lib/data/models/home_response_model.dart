import 'package:freezed_annotation/freezed_annotation.dart';
import 'banner_model.dart';
import 'category_model.dart';
import 'product_model.dart';

part 'home_response_model.freezed.dart';
part 'home_response_model.g.dart';

@freezed
class HomeResponseModel with _$HomeResponseModel {
  const factory HomeResponseModel({
    @JsonKey(name: 'banners') @Default([]) List<BannerModel> banners,
    @JsonKey(name: 'categories') @Default([]) List<CategoryModel> categories,
    @JsonKey(name: 'featured_products') @Default([]) List<ProductModel> featuredProducts,
    @JsonKey(name: 'daily_best_selling') @Default([]) List<ProductModel> dailyBestSelling,
    @JsonKey(name: 'recently_added') @Default([]) List<ProductModel> recentlyAdded,
    @JsonKey(name: 'popular_products') @Default([]) List<ProductModel> popularProducts,
    @JsonKey(name: 'trending_products') @Default([]) List<ProductModel> trendingProducts,
  }) = _HomeResponseModel;

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseModelFromJson(json);
}

