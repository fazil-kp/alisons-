// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerModelImpl _$$BannerModelImplFromJson(Map<String, dynamic> json) =>
    _$BannerModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      imageUrl: json['image'] as String?,
      action: json['action'] as String?,
      actionUrl: json['action_url'] as String?,
    );

Map<String, dynamic> _$$BannerModelImplToJson(_$BannerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'image': instance.imageUrl,
      'action': instance.action,
      'action_url': instance.actionUrl,
    };
