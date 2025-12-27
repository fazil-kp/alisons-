import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';
import '../viewmodel/product_details_viewmodel.dart';
import '../../../data/repositories/products_repository.dart';
import '../../../data/services/api_service.dart';
import '../../../features/cart/viewmodel/cart_viewmodel.dart';
import '../../../core/theme/app_theme.dart';
import '../../../core/utils/extensions.dart';

class ProductDetailsScreen extends StatefulWidget {
  final String slug;
  final String? store;

  const ProductDetailsScreen({
    super.key,
    required this.slug,
    this.store,
  });

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProductDetailsViewModel>().loadProductDetails();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductDetailsViewModel(
        ProductsRepository(ApiService()),
        widget.slug,
        store: widget.store,
      ),
      child: Scaffold(
        backgroundColor: AppTheme.lightGrey,
        appBar: AppBar(
          title: const Text('Product Details'),
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
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () => context.push('/cart'),
                ),
                Consumer<CartViewModel>(
                  builder: (context, cartViewModel, _) {
                    final count = cartViewModel.itemCount;
                    if (count == 0) return const SizedBox.shrink();
                    return Positioned(
                      right: 8,
                      top: 8,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 16,
                          minHeight: 16,
                        ),
                        child: Text(
                          '$count',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        body: Consumer<ProductDetailsViewModel>(
          builder: (context, viewModel, _) {
            if (viewModel.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (viewModel.errorMessage != null) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: 64,
                      color: Colors.grey.shade400,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      viewModel.errorMessage ?? 'Something went wrong',
                      style: context.textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () => viewModel.loadProductDetails(),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              );
            }

            final product = viewModel.product;
            if (product == null) {
              return const Center(child: Text('Product not found'));
            }

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Image
                  Container(
                    width: double.infinity,
                    height: 300,
                    color: AppTheme.white,
                    child: Stack(
                      children: [
                        CachedNetworkImage(
                          imageUrl: product.imageUrl?.imageUrl ?? '',
                          width: double.infinity,
                          height: 300,
                          fit: BoxFit.contain,
                          placeholder: (context, url) => Container(
                            color: Colors.grey.shade200,
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                          errorWidget: (context, url, error) => Container(
                            color: Colors.grey.shade200,
                            child: const Icon(
                              Icons.image_not_supported,
                              size: 64,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 16,
                          right: 16,
                          child: IconButton(
                            icon: const Icon(Icons.favorite_border),
                            onPressed: () {
                              // TODO: Implement wishlist
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // Product Info Card
                  Container(
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppTheme.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: context.textTheme.displaySmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (product.category != null) ...[
                          const SizedBox(height: 4),
                          Text(
                            product.category!,
                            style: context.textTheme.bodyMedium?.copyWith(
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                        const SizedBox(height: 16),
                        
                        // Price
                        Row(
                          children: [
                            Text(
                              '₹${product.currentPrice.toStringAsFixed(2)}',
                              style: context.textTheme.displayMedium?.copyWith(
                                color: AppTheme.primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            if (product.originalPrice != null &&
                                product.originalPrice! > product.currentPrice) ...[
                              const SizedBox(width: 12),
                              Text(
                                '₹${product.originalPrice!.toStringAsFixed(2)}',
                                style: context.textTheme.titleLarge?.copyWith(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey,
                                ),
                              ),
                              if (product.discountPercentage != null) ...[
                                const SizedBox(width: 8),
                                Text(
                                  '(${product.discountPercentage!.toInt()}% off)',
                                  style: context.textTheme.bodyMedium?.copyWith(
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ],
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.share),
                              onPressed: () {
                                // TODO: Implement share
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  
                  // Description
                  if (product.description != null) ...[
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppTheme.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            style: context.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            product.description!,
                            style: context.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                  
                  // Related Products (placeholder)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Related Products',
                      style: context.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 280,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: 2, // Placeholder
                      itemBuilder: (context, index) {
                        // TODO: Load related products
                        return const SizedBox.shrink();
                      },
                    ),
                  ),
                  const SizedBox(height: 100), // Space for bottom button
                ],
              ),
            );
          },
        ),
        bottomNavigationBar: Consumer2<ProductDetailsViewModel, CartViewModel>(
          builder: (context, viewModel, cartViewModel, _) {
            final product = viewModel.product;
            if (product == null) return const SizedBox.shrink();

            final isInCart = cartViewModel.isInCart(product.id);
            final quantity = isInCart ? cartViewModel.getQuantity(product.id) : 0;

            return Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppTheme.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: isInCart && quantity > 0
                  ? Container(
                      decoration: BoxDecoration(
                        color: AppTheme.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.remove,
                              color: AppTheme.white,
                            ),
                            onPressed: () =>
                                cartViewModel.decrementQuantity(product.id),
                          ),
                          Text(
                            '$quantity',
                            style: const TextStyle(
                              color: AppTheme.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.add,
                              color: AppTheme.white,
                            ),
                            onPressed: () =>
                                cartViewModel.incrementQuantity(product.id),
                          ),
                        ],
                      ),
                    )
                  : SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          cartViewModel.addToCart(product);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Added to cart'),
                              duration: Duration(seconds: 1),
                            ),
                          );
                        },
                        icon: const Icon(Icons.shopping_cart),
                        label: const Text(
                          'Add To Cart',
                          style: TextStyle(fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }
}

