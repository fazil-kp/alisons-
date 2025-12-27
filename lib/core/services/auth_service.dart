import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static final AuthService _instance = AuthService._internal();
  factory AuthService() => _instance;
  AuthService._internal();

  static const String _userIdKey = 'user_id';
  static const String _tokenKey = 'token';

  SharedPreferences? _prefs;
  String? _userId;
  String? _token;

  String? get userId => _userId;
  String? get token => _token;
  bool get isAuthenticated => _userId != null && _token != null;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    await _loadCredentials();
  }

  Future<void> _loadCredentials() async {
    if (_prefs != null) {
      _userId = _prefs!.getString(_userIdKey);
      _token = _prefs!.getString(_tokenKey);
    }
  }

  Future<void> setCredentials(String userId, String token) async {
    _userId = userId;
    _token = token;

    if (_prefs != null) {
      await _prefs!.setString(_userIdKey, userId);
      await _prefs!.setString(_tokenKey, token);
    }
  }

  Future<void> clearCredentials() async {
    _userId = null;
    _token = null;

    if (_prefs != null) {
      await _prefs!.remove(_userIdKey);
      await _prefs!.remove(_tokenKey);
    }
  }
}

