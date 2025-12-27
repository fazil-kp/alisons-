class AuthService {
  static final AuthService _instance = AuthService._internal();
  factory AuthService() => _instance;
  AuthService._internal();

  int? _userId;
  String? _token;

  int? get userId => _userId;
  String? get token => _token;
  bool get isAuthenticated => _userId != null && _token != null;

  void setCredentials(int userId, String token) {
    _userId = userId;
    _token = token;
  }

  void clearCredentials() {
    _userId = null;
    _token = null;
  }
}

