import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_model.freezed.dart';
part 'banner_model.g.dart';

@freezed
class BannerModel with _$BannerModel {
  const factory BannerModel({@Default(0) int id, String? title, String? subtitle, @JsonKey(name: 'image') String? imageUrl, String? action, @JsonKey(name: 'action_url') String? actionUrl}) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) => _$BannerModelFromJson(json);
}
