class AppConstants {
  // API Configuration
  static const String baseUrl = 'https://sungod.demospro2023.in.net/api';
  static const String imageBaseUrl = 'https://sungod.demospro2023.in.net';
  
  // API Endpoints
  static const String loginEndpoint = '/login';
  static const String homeEndpoint = '/home';
  static const String productsEndpoint = '/products';
  static const String productDetailsEndpoint = '/product-details';
  static const String cartEndpoint = '/cart';
  static const String addToCartEndpoint = '/cart/add';
  
  // App Constants
  static const String appName = 'Sungod Home';
  
  // Login Credentials (hardcoded for now)
  static const String defaultEmail = 'mobile@alisonsgroup.com';
  static const String defaultPassword = '12345678';
  
  // Timeouts (in milliseconds)
  static const int connectTimeout = 60000; // 60 seconds
  static const int receiveTimeout = 60000; // 60 seconds
  
  // Pagination
  static const int defaultPageSize = 20;
}

