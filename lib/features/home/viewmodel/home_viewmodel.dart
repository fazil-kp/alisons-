import 'package:flutter/material.dart';
import '../../../data/repositories/home_repository.dart';
import '../../../data/models/home_response_model.dart';
import '../../../core/services/auth_service.dart';

class HomeViewModel extends ChangeNotifier {
  final HomeRepository _homeRepository;
  final AuthService _authService = AuthService();

  HomeViewModel(this._homeRepository);

  bool _isLoading = false;
  String? _errorMessage;
  HomeResponseModel? _homeData;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  HomeResponseModel? get homeData => _homeData;

  Future<void> loadHomeData() async {
    final userId = _authService.userId;
    final token = _authService.token;

    if (userId == null || token == null) {
      _errorMessage = 'Please login first';
      notifyListeners();
      return;
    }

    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      _homeData = await _homeRepository.getHomeData(
        id: userId,
        token: token,
      );
      _errorMessage = null;
    } catch (e) {
      _errorMessage = 'Failed to load home data. Please try again.';
      _homeData = null;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refresh() async {
    await loadHomeData();
  }
}

