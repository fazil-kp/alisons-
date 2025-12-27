import 'package:flutter/material.dart';
import '../constants/app_constants.dart';

extension StringExtensions on String {
  String get imageUrl {
    if (startsWith('http://') || startsWith('https://')) {
      return this;
    }
    // If the path already starts with /, use it as is
    // Otherwise, prepend /storage/ for Laravel storage files
    // Remove any leading slashes from the filename to avoid double slashes
    final cleanPath = trim().replaceFirst(RegExp(r'^/+'), '');
    final imagePath = cleanPath.startsWith('/') ? cleanPath : '/storage/$cleanPath';
    return '${AppConstants.imageBaseUrl}$imagePath';
  }
}

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double get screenWidth => mediaQuery.size.width;
  double get screenHeight => mediaQuery.size.height;
}

