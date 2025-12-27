import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../viewmodel/home_viewmodel.dart';
import '../../../features/cart/viewmodel/cart_viewmodel.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/extensions.dart';
import 'widgets/banner_carousel_widget.dart';
import 'widgets/category_item_widget.dart';
import 'widgets/product_section_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final RefreshController _refreshController = RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeViewModel>().loadHomeData();
    });
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  void _onRefresh() async {
    await context.read<HomeViewModel>().refresh();
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppTheme.primaryColor,
        title: Row(children: [const Icon(Icons.shopping_cart, color: AppTheme.green)]),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Implement search
            },
          ),
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite_border),
                onPressed: () {
                  // TODO: Implement wishlist
                },
              ),
            ],
          ),
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.notifications_outlined),
                onPressed: () {
                  // TODO: Implement notifications
                },
              ),
            ],
          ),
        ],
      ),
      body: Consumer<HomeViewModel>(
        builder: (context, viewModel, _) {
          if (viewModel.isLoading && viewModel.homeData == null) {
            return const Center(child: CircularProgressIndicator());
          }

          if (viewModel.errorMessage != null && viewModel.homeData == null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.error_outline, size: 64, color: Colors.grey.shade400),
                  const SizedBox(height: 16),
                  Text(viewModel.errorMessage ?? 'Something went wrong', style: context.textTheme.titleMedium, textAlign: TextAlign.center),
                  const SizedBox(height: 16),
                  ElevatedButton(onPressed: () => viewModel.loadHomeData(), child: const Text('Retry')),
                ],
              ),
            );
          }

          final homeData = viewModel.homeData;
          if (homeData == null) {
            return const Center(child: Text('No data available'));
          }

          return SmartRefresher(
            controller: _refreshController,
            onRefresh: _onRefresh,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Banner Carousel
                  if (homeData.banners.isNotEmpty)
                    BannerCarouselWidget(banners: homeData.banners)
                  else
                    Container(
                      margin: const EdgeInsets.all(16),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(colors: [AppTheme.orange, AppTheme.orange.withOpacity(0.8)]),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Hurry Up! Get 10% Off', style: TextStyle(color: AppTheme.white, fontSize: 14)),
                          const SizedBox(height: 8),
                          const Text(
                            'Go Natural with Unpolished Grains',
                            style: TextStyle(color: AppTheme.white, fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              // TODO: Handle banner action
                            },
                            style: ElevatedButton.styleFrom(backgroundColor: AppTheme.white, foregroundColor: AppTheme.orange),
                            child: const Text('Shop Now'),
                          ),
                        ],
                      ),
                    ),

                  const SizedBox(height: 16),

                  // Categories
                  if (homeData.categories.isNotEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Categories',
                        style: context.textTheme.titleLarge?.copyWith(color: AppTheme.primaryColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: homeData.categories.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: CategoryItemWidget(category: homeData.categories[index]),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],

                  // New Arrivals
                  if (homeData.newarrivals.isNotEmpty) ProductSectionWidget(title: 'New Arrivals', products: homeData.newarrivals),

                  const SizedBox(height: 24),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    final cartViewModel = context.watch<CartViewModel>();
    final cartItemCount = cartViewModel.itemCount;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppTheme.primaryColor,
      unselectedItemColor: Colors.grey,
      currentIndex: 0,
      onTap: (index) {
        switch (index) {
          case 0:
            // Already on home
            break;
          case 1:
            context.push('/products');
            break;
          case 2:
            context.push('/cart');
            break;
          case 3:
            // TODO: Profile
            break;
        }
      },
      items: [
        const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        const BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Category'),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              const Icon(Icons.shopping_cart),
              if (cartItemCount > 0)
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                    constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
                    child: Text(
                      '$cartItemCount',
                      style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
          label: 'Cart',
        ),
        const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
