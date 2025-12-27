import 'package:go_router/go_router.dart';
import '../features/auth/view/login_screen.dart';
import '../features/home/view/home_screen.dart';
import '../features/products/view/product_list_screen.dart';
import '../features/products/view/product_details_screen.dart';
import '../features/cart/view/cart_screen.dart';
import '../core/services/auth_service.dart';

class AppRouter {
  static GoRouter createRouter(AuthService authService) {
    return GoRouter(
      initialLocation: authService.isAuthenticated ? '/home' : '/login',
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
            final slug = state.uri.queryParameters['slug'] ?? '';
            final store = state.uri.queryParameters['store'];
            return ProductDetailsScreen(slug: slug, store: store);
          },
        ),
        GoRoute(path: '/cart', name: 'cart', builder: (context, state) => const CartScreen()),
      ],
      redirect: (context, state) {
        final isAuthenticated = authService.isAuthenticated;
        final isGoingToLogin = state.matchedLocation == '/login';

        // If not authenticated and not going to login, redirect to login
        if (!isAuthenticated && !isGoingToLogin) {
          return '/login';
        }

        // If authenticated and going to login, redirect to home
        if (isAuthenticated && isGoingToLogin) {
          return '/home';
        }

        // No redirect needed
        return null;
      },
    );
  }

  // Keep the old router for backward compatibility (can be removed later)
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
          final slug = state.uri.queryParameters['slug'] ?? '';
          final store = state.uri.queryParameters['store'];
          return ProductDetailsScreen(slug: slug, store: store);
        },
      ),
      GoRoute(path: '/cart', name: 'cart', builder: (context, state) => const CartScreen()),
    ],
  );
}
