// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuccessImpl<T> _$$SuccessImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _$SuccessImpl<T>(
  data: fromJsonT(json['data']),
  message: json['message'] as String?,
  status: json['status'] as bool? ?? true,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$SuccessImplToJson<T>(
  _$SuccessImpl<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'data': toJsonT(instance.data),
  'message': instance.message,
  'status': instance.status,
  'runtimeType': instance.$type,
};

_$ErrorImpl<T> _$$ErrorImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _$ErrorImpl<T>(
  message: json['message'] as String?,
  status: json['status'] as bool? ?? false,
  errors: json['errors'] as Map<String, dynamic>?,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$ErrorImplToJson<T>(
  _$ErrorImpl<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'message': instance.message,
  'status': instance.status,
  'errors': instance.errors,
  'runtimeType': instance.$type,
};
