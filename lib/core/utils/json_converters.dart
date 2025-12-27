import 'package:json_annotation/json_annotation.dart';

/// Converts a value that might be a String or num to an int
class IntConverter implements JsonConverter<int, dynamic> {
  const IntConverter();

  @override
  int fromJson(dynamic json) {
    if (json == null) return 0;
    if (json is int) return json;
    if (json is num) return json.toInt();
    if (json is String) {
      return int.tryParse(json) ?? 0;
    }
    return 0;
  }

  @override
  dynamic toJson(int object) => object;
}

/// Converts a value that might be a String or num to a double
class DoubleConverter implements JsonConverter<double, dynamic> {
  const DoubleConverter();

  @override
  double fromJson(dynamic json) {
    if (json == null) return 0.0;
    if (json is double) return json;
    if (json is num) return json.toDouble();
    if (json is String) {
      return double.tryParse(json) ?? 0.0;
    }
    return 0.0;
  }

  @override
  dynamic toJson(double object) => object;
}

/// Converts a value that might be a String or num to a nullable int
class NullableIntConverter implements JsonConverter<int?, dynamic> {
  const NullableIntConverter();

  @override
  int? fromJson(dynamic json) {
    if (json == null) return null;
    if (json is int) return json;
    if (json is num) return json.toInt();
    if (json is String) {
      return int.tryParse(json);
    }
    return null;
  }

  @override
  dynamic toJson(int? object) => object;
}

/// Converts a value that might be a String or num to a nullable double
class NullableDoubleConverter implements JsonConverter<double?, dynamic> {
  const NullableDoubleConverter();

  @override
  double? fromJson(dynamic json) {
    if (json == null) return null;
    if (json is double) return json;
    if (json is num) return json.toDouble();
    if (json is String) {
      return double.tryParse(json);
    }
    return null;
  }

  @override
  dynamic toJson(double? object) => object;
}
