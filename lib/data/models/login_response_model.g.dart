// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$LoginResponseModelImpl(
  token: json['token'] as String?,
  user: json['user'] as Map<String, dynamic>?,
  message: json['message'] as String?,
  success: json['success'] as bool? ?? true,
);

Map<String, dynamic> _$$LoginResponseModelImplToJson(
  _$LoginResponseModelImpl instance,
) => <String, dynamic>{
  'token': instance.token,
  'user': instance.user,
  'message': instance.message,
  'success': instance.success,
};
