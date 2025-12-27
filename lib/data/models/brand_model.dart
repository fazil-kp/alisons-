import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_model.freezed.dart';
part 'brand_model.g.dart';

@freezed
class BrandModel with _$BrandModel {
  const factory BrandModel({
    required int id,
    required String name,
    String? slug,
    @JsonKey(name: 'image') String? imageUrl,
    @JsonKey(name: 'item_count') @Default(0) int itemCount,
  }) = _BrandModel;

  factory BrandModel.fromJson(Map<String, dynamic> json) =>
      _$BrandModelFromJson(json);
}

