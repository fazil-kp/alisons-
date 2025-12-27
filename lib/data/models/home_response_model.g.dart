// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeResponseModelImpl _$$HomeResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$HomeResponseModelImpl(
  success: json['success'] == null
      ? 0
      : const IntConverter().fromJson(json['success']),
  message: json['message'] as String?,
  banners:
      (json['banner1'] as List<dynamic>?)
          ?.map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  newarrivals:
      (json['newarrivals'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  featuredbrands:
      (json['featuredbrands'] as List<dynamic>?)
          ?.map((e) => BrandModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  cartcount: json['cartcount'] == null
      ? 0
      : const IntConverter().fromJson(json['cartcount']),
  currency: json['currency'] == null
      ? null
      : CurrencyModel.fromJson(json['currency'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$HomeResponseModelImplToJson(
  _$HomeResponseModelImpl instance,
) => <String, dynamic>{
  'success': const IntConverter().toJson(instance.success),
  'message': instance.message,
  'banner1': instance.banners,
  'categories': instance.categories,
  'newarrivals': instance.newarrivals,
  'featuredbrands': instance.featuredbrands,
  'cartcount': const IntConverter().toJson(instance.cartcount),
  'currency': instance.currency,
};
