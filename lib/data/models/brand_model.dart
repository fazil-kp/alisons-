import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/utils/json_converters.dart';

part 'brand_model.freezed.dart';
part 'brand_model.g.dart';

@freezed
class BrandModel with _$BrandModel {
  const factory BrandModel({
    @IntConverter() @Default(0) int id,
    @Default('') String name,
    String? slug,
    @JsonKey(name: 'image') String? imageUrl,
    @JsonKey(name: 'item_count') @IntConverter() @Default(0) int itemCount,
  }) = _BrandModel;

  factory BrandModel.fromJson(Map<String, dynamic> json) =>
      _$BrandModelFromJson(json);
}

