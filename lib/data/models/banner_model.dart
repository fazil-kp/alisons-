import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/utils/json_converters.dart';

part 'banner_model.freezed.dart';
part 'banner_model.g.dart';

@freezed
class BannerModel with _$BannerModel {
  const factory BannerModel({
    @IntConverter() @Default(0) int id,
    @JsonKey(name: 'link_type') @IntConverter() @Default(0) int linkType,
    @JsonKey(name: 'link_value') String? linkValue,
    @JsonKey(name: 'image') String? imageUrl,
    String? video,
    String? title,
    @JsonKey(name: 'sub_title') String? subTitle,
    @JsonKey(name: 'button_text') String? buttonText,
    String? logo,
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) => _$BannerModelFromJson(json);
}
