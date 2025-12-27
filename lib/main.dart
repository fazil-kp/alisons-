import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/theme/app_theme.dart';
import 'router/app_router.dart';
import 'data/services/api_service.dart';
import 'data/repositories/auth_repository.dart';
import 'data/repositories/home_repository.dart';
import 'data/repositories/products_repository.dart';
import 'data/repositories/cart_repository.dart';
import 'features/auth/viewmodel/auth_viewmodel.dart';
import 'features/home/viewmodel/home_viewmodel.dart';
import 'features/cart/viewmodel/cart_viewmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize services
    final apiService = ApiService();
    final authRepository = AuthRepository(apiService);
    final homeRepository = HomeRepository(apiService);
    final productsRepository = ProductsRepository(apiService);
    final cartRepository = CartRepository(apiService);

    return MultiProvider(
      providers: [
        // Services
        Provider<ApiService>.value(value: apiService),

        // Repositories
        Provider<AuthRepository>.value(value: authRepository),
        Provider<HomeRepository>.value(value: homeRepository),
        Provider<ProductsRepository>.value(value: productsRepository),
        Provider<CartRepository>.value(value: cartRepository),

        // ViewModels
        ChangeNotifierProvider(create: (_) => CartViewModel()),
        ChangeNotifierProxyProvider<AuthRepository, AuthViewModel>(create: (_) => AuthViewModel(authRepository), update: (_, authRepo, __) => AuthViewModel(authRepo)),
        ChangeNotifierProxyProvider<HomeRepository, HomeViewModel>(create: (_) => HomeViewModel(homeRepository), update: (_, homeRepo, __) => HomeViewModel(homeRepo)),
      ],
      child: MaterialApp.router(title: 'Sungod Home', debugShowCheckedModeBanner: false, theme: AppTheme.lightTheme, routerConfig: AppRouter.router),
    );
  }
}
