// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] == null ? 0 : const IntConverter().fromJson(json['id']),
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      imageUrl: json['image'] as String?,
      currentPrice: json['price'] == null
          ? 0.0
          : const DoubleConverter().fromJson(json['price']),
      originalPrice: const NullableDoubleConverter().fromJson(
        json['original_price'],
      ),
      discountPercentage: const NullableDoubleConverter().fromJson(
        json['discount_percentage'],
      ),
      category: json['category'] as String?,
      categorySlug: json['category_slug'] as String?,
      inStock: json['in_stock'] as bool? ?? true,
      quantity: json['quantity'] == null
          ? 0
          : const IntConverter().fromJson(json['quantity']),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': const IntConverter().toJson(instance.id),
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'image': instance.imageUrl,
      'price': const DoubleConverter().toJson(instance.currentPrice),
      'original_price': const NullableDoubleConverter().toJson(
        instance.originalPrice,
      ),
      'discount_percentage': const NullableDoubleConverter().toJson(
        instance.discountPercentage,
      ),
      'category': instance.category,
      'category_slug': instance.categorySlug,
      'in_stock': instance.inStock,
      'quantity': const IntConverter().toJson(instance.quantity),
    };
