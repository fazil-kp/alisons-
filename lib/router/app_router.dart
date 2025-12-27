import 'package:go_router/go_router.dart';
import '../features/auth/view/login_screen.dart';
import '../features/home/view/home_screen.dart';
import '../features/products/view/product_list_screen.dart';
import '../features/products/view/product_details_screen.dart';
import '../features/cart/view/cart_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(path: '/login', name: 'login', builder: (context, state) => const LoginScreen()),
      GoRoute(path: '/home', name: 'home', builder: (context, state) => const HomeScreen()),
      GoRoute(
        path: '/products',
        name: 'products',
        builder: (context, state) {
          final categorySlug = state.uri.queryParameters['category'];
          return ProductListScreen(categorySlug: categorySlug);
        },
      ),
      GoRoute(
        path: '/product-details',
        name: 'product-details',
        builder: (context, state) {
          final productId = int.tryParse(state.uri.queryParameters['id'] ?? '0') ?? 0;
          return ProductDetailsScreen(productId: productId);
        },
      ),
      GoRoute(path: '/cart', name: 'cart', builder: (context, state) => const CartScreen()),
    ],
  );
}
