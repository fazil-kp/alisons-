// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      imageUrl: json['image'] as String?,
      currentPrice: (json['price'] as num).toDouble(),
      originalPrice: (json['original_price'] as num?)?.toDouble(),
      discountPercentage: (json['discount_percentage'] as num?)?.toDouble(),
      category: json['category'] as String?,
      categorySlug: json['category_slug'] as String?,
      inStock: json['in_stock'] as bool? ?? true,
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'image': instance.imageUrl,
      'price': instance.currentPrice,
      'original_price': instance.originalPrice,
      'discount_percentage': instance.discountPercentage,
      'category': instance.category,
      'category_slug': instance.categorySlug,
      'in_stock': instance.inStock,
      'quantity': instance.quantity,
    };
