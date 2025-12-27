// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsResponseModelImpl _$$ProductsResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$ProductsResponseModelImpl(
  products:
      (json['products'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  total: (json['total'] as num?)?.toInt() ?? 0,
  page: (json['page'] as num?)?.toInt() ?? 1,
  perPage: (json['per_page'] as num?)?.toInt() ?? 20,
);

Map<String, dynamic> _$$ProductsResponseModelImplToJson(
  _$ProductsResponseModelImpl instance,
) => <String, dynamic>{
  'products': instance.products,
  'total': instance.total,
  'page': instance.page,
  'per_page': instance.perPage,
};
