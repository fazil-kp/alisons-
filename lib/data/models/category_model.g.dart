// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: json['id'] == null ? 0 : const IntConverter().fromJson(json['id']),
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String?,
      imageUrl: json['image'] as String?,
      itemCount: json['item_count'] == null
          ? 0
          : const IntConverter().fromJson(json['item_count']),
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': const IntConverter().toJson(instance.id),
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.imageUrl,
      'item_count': const IntConverter().toJson(instance.itemCount),
    };
