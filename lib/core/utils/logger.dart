import 'package:flutter/foundation.dart';

class Logger {
  static void d(String message, [String? tag]) {
    if (kDebugMode) {
      debugPrint('[${tag ?? 'APP'}] $message');
    }
  }
  
  static void e(String message, [String? tag, Object? error, StackTrace? stackTrace]) {
    if (kDebugMode) {
      debugPrint('[${tag ?? 'ERROR'}] $message');
      if (error != null) {
        debugPrint('Error: $error');
      }
      if (stackTrace != null) {
        debugPrint('StackTrace: $stackTrace');
      }
    }
  }
}

