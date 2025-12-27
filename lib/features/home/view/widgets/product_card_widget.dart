import 'package:alisons/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../../../features/cart/viewmodel/cart_viewmodel.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/extensions.dart';

class ProductCardWidget extends StatelessWidget {
  final ProductModel product;
  final double? width;

  const ProductCardWidget({super.key, required this.product, this.width});

  @override
  Widget build(BuildContext context) {
    final cartViewModel = context.watch<CartViewModel>();
    final isInCart = cartViewModel.isInCart(product.id);
    final quantity = isInCart ? cartViewModel.getQuantity(product.id) : 0;

    return GestureDetector(
      onTap: () {
        if (product.slug != null) {
          context.push('/product-details?slug=${product.slug}');
        }
      },
      child: Container(
        width: width ?? 160,
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          color: AppTheme.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                  child: CachedNetworkImage(
                    imageUrl: product.imageUrl?.imageUrl ?? '',
                    width: double.infinity,
                    height: 120,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      width: double.infinity,
                      height: 120,
                      color: Colors.grey.shade200,
                      child: const Center(child: CircularProgressIndicator()),
                    ),
                    errorWidget: (context, url, error) => Container(width: double.infinity, height: 120, color: Colors.grey.shade200, child: const Icon(Icons.image_not_supported)),
                  ),
                ),
                // Discount Badge
                if (product.discountPercentage != null && product.discountPercentage! > 0)
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                      decoration: BoxDecoration(color: AppTheme.primaryColor, borderRadius: BorderRadius.circular(4)),
                      child: Text(
                        '${product.discountPercentage!.toInt()}% off',
                        style: const TextStyle(color: AppTheme.white, fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                // Wishlist Icon
                Positioned(
                  top: 8,
                  right: 8,
                  child: IconButton(
                    icon: const Icon(Icons.favorite_border, color: AppTheme.white, size: 20),
                    onPressed: () {
                      // TODO: Implement wishlist
                    },
                  ),
                ),
              ],
            ),

            // Product Info
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Category
                  if (product.category != null)
                    Text(
                      product.category!,
                      style: context.textTheme.bodySmall?.copyWith(color: Colors.grey.shade600),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  const SizedBox(height: 4),

                  // Product Name
                  Text(
                    product.name,
                    style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),

                  // Price
                  Row(
                    children: [
                      Text(
                        '₹${product.currentPrice.toStringAsFixed(2)}',
                        style: context.textTheme.titleSmall?.copyWith(color: AppTheme.primaryColor, fontWeight: FontWeight.bold),
                      ),
                      if (product.originalPrice != null && product.originalPrice! > product.currentPrice) ...[
                        const SizedBox(width: 4),
                        Text(
                          '₹${product.originalPrice!.toStringAsFixed(2)}',
                          style: context.textTheme.bodySmall?.copyWith(decoration: TextDecoration.lineThrough, color: Colors.grey),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Add to Cart / Quantity Control
                  if (isInCart && quantity > 0)
                    Container(
                      decoration: BoxDecoration(color: AppTheme.primaryColor, borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove, color: AppTheme.white, size: 18),
                            onPressed: () => cartViewModel.decrementQuantity(product.id),
                          ),
                          Text(
                            '$quantity',
                            style: const TextStyle(color: AppTheme.white, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            icon: const Icon(Icons.add, color: AppTheme.white, size: 18),
                            onPressed: () => cartViewModel.incrementQuantity(product.id),
                          ),
                        ],
                      ),
                    )
                  else
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          cartViewModel.addToCart(product);
                        },
                        icon: const Icon(Icons.shopping_cart, size: 16),
                        label: const Text('Add'),
                        style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 8)),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
