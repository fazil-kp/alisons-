// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String,
      slug: json['slug'] as String?,
      imageUrl: json['image'] as String?,
      itemCount: (json['item_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.imageUrl,
      'item_count': instance.itemCount,
    };
