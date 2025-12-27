import 'package:flutter/material.dart';
import '../../../data/repositories/home_repository.dart';
import '../../../data/models/home_response_model.dart';

class HomeViewModel extends ChangeNotifier {
  final HomeRepository _homeRepository;

  HomeViewModel(this._homeRepository);

  bool _isLoading = false;
  String? _errorMessage;
  HomeResponseModel? _homeData;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;
  HomeResponseModel? get homeData => _homeData;

  Future<void> loadHomeData() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      _homeData = await _homeRepository.getHomeData();
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

