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
import 'core/services/auth_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize AuthService
  final authService = AuthService();
  await authService.init();

  runApp(MyApp(authService: authService));
}

class MyApp extends StatelessWidget {
  final AuthService authService;

  const MyApp({super.key, required this.authService});

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
        Provider<AuthService>.value(value: authService),

        // Repositories
        Provider<AuthRepository>.value(value: authRepository),
        Provider<HomeRepository>.value(value: homeRepository),
        Provider<ProductsRepository>.value(value: productsRepository),
        Provider<CartRepository>.value(value: cartRepository),

        // ViewModels
        ChangeNotifierProvider(create: (_) => CartViewModel()),
        ChangeNotifierProxyProvider2<AuthRepository, AuthService, AuthViewModel>(create: (_) => AuthViewModel(authRepository, authService), update: (_, authRepo, authService, __) => AuthViewModel(authRepo, authService)),
        ChangeNotifierProxyProvider<HomeRepository, HomeViewModel>(create: (_) => HomeViewModel(homeRepository), update: (_, homeRepo, __) => HomeViewModel(homeRepo)),
      ],
      child: MaterialApp.router(title: 'Sungod Home', debugShowCheckedModeBanner: false, theme: AppTheme.lightTheme, routerConfig: AppRouter.createRouter(authService)),
    );
  }
}
