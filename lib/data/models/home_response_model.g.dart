// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeResponseModelImpl _$$HomeResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$HomeResponseModelImpl(
  banners:
      (json['banners'] as List<dynamic>?)
          ?.map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  featuredProducts:
      (json['featured_products'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  dailyBestSelling:
      (json['daily_best_selling'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  recentlyAdded:
      (json['recently_added'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  popularProducts:
      (json['popular_products'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  trendingProducts:
      (json['trending_products'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$HomeResponseModelImplToJson(
  _$HomeResponseModelImpl instance,
) => <String, dynamic>{
  'banners': instance.banners,
  'categories': instance.categories,
  'featured_products': instance.featuredProducts,
  'daily_best_selling': instance.dailyBestSelling,
  'recently_added': instance.recentlyAdded,
  'popular_products': instance.popularProducts,
  'trending_products': instance.trendingProducts,
};
