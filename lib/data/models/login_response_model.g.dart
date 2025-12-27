// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseModelImpl _$$LoginResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$LoginResponseModelImpl(
  id: json['id'] as String?,
  token: json['token'] as String?,
  customerdata: json['customerdata'] as Map<String, dynamic>?,
  message: json['message'] as String?,
  success: json['success'] as bool? ?? false,
);

Map<String, dynamic> _$$LoginResponseModelImplToJson(
  _$LoginResponseModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'token': instance.token,
  'customerdata': instance.customerdata,
  'message': instance.message,
  'success': instance.success,
};
