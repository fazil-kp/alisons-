// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerModelImpl _$$BannerModelImplFromJson(Map<String, dynamic> json) =>
    _$BannerModelImpl(
      id: json['id'] == null ? 0 : const IntConverter().fromJson(json['id']),
      linkType: json['link_type'] == null
          ? 0
          : const IntConverter().fromJson(json['link_type']),
      linkValue: json['link_value'] as String?,
      imageUrl: json['image'] as String?,
      video: json['video'] as String?,
      title: json['title'] as String?,
      subTitle: json['sub_title'] as String?,
      buttonText: json['button_text'] as String?,
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$$BannerModelImplToJson(_$BannerModelImpl instance) =>
    <String, dynamic>{
      'id': const IntConverter().toJson(instance.id),
      'link_type': const IntConverter().toJson(instance.linkType),
      'link_value': instance.linkValue,
      'image': instance.imageUrl,
      'video': instance.video,
      'title': instance.title,
      'sub_title': instance.subTitle,
      'button_text': instance.buttonText,
      'logo': instance.logo,
    };
