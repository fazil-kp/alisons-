import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response_model.freezed.dart';
part 'api_response_model.g.dart';

@Freezed(genericArgumentFactories: true)
class ApiResponseModel<T> with _$ApiResponseModel<T> {
  const factory ApiResponseModel.success({required T data, String? message, @JsonKey(name: 'status') @Default(true) bool status}) = _Success<T>;

  const factory ApiResponseModel.error({String? message, @JsonKey(name: 'status') @Default(false) bool status, @JsonKey(name: 'errors') Map<String, dynamic>? errors}) = _Error<T>;

  factory ApiResponseModel.fromJson(Map<String, dynamic> json, T Function(Object?) fromJsonT) => _$ApiResponseModelFromJson(json, fromJsonT);
}
