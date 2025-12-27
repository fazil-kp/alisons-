import 'package:dio/dio.dart';
import '../../core/constants/app_constants.dart';
import '../../core/utils/logger.dart';

class ApiService {
  late final Dio _dio;

  ApiService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.baseUrl,
        connectTimeout: const Duration(milliseconds: AppConstants.connectTimeout),
        receiveTimeout: const Duration(milliseconds: AppConstants.receiveTimeout),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          Logger.d('Request: ${options.method} ${options.path}');
          Logger.d('Query Params: ${options.queryParameters}');
          Logger.d('Data: ${options.data}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          Logger.d('Response: ${response.statusCode} ${response.requestOptions.path}');
          Logger.d('Data: ${response.data}');
          return handler.next(response);
        },
        onError: (error, handler) {
          Logger.e(
            'Error: ${error.requestOptions.path}',
            'API',
            error,
            error.stackTrace,
          );
          return handler.next(error);
        },
      ),
    );
  }

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
      );
      return response;
    } on DioException catch (e) {
      Logger.e('GET Error: $path', 'API', e);
      rethrow;
    }
  }

  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response;
    } on DioException catch (e) {
      Logger.e('POST Error: $path', 'API', e);
      rethrow;
    }
  }

  void setAuthToken(String token) {
    _dio.options.headers['Authorization'] = 'Bearer $token';
  }

  void clearAuthToken() {
    _dio.options.headers.remove('Authorization');
  }
}

