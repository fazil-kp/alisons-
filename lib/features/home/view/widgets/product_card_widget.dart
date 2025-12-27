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

    // Debug logging to identify product ID issues
    print('ProductCardWidget - Product ID: ${product.id}, Name: ${product.name}, isInCart: $isInCart, quantity: $quantity');

    return GestureDetector(
      onTap: () {
        if (product.slug != null) {
          context.push('/product-details?slug=${product.slug}');
        }
      },
      child: Container(
        width: width ?? 180,
        decoration: BoxDecoration(color: const Color(0xFFF5F5F5), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image Section with rounded white background
            Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: AppTheme.white, borderRadius: BorderRadius.circular(16)),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: CachedNetworkImage(
                      imageUrl: product.imageUrl?.imageUrl ?? '',
                      width: double.infinity,
                      height: 160,
                      fit: BoxFit.contain,
                      placeholder: (context, url) => Container(
                        width: double.infinity,
                        height: 160,
                        color: AppTheme.white,
                        child: Center(child: CircularProgressIndicator(strokeWidth: 2, valueColor: AlwaysStoppedAnimation<Color>(AppTheme.primaryColor))),
                      ),
                      errorWidget: (context, url, error) => Container(
                        width: double.infinity,
                        height: 160,
                        color: AppTheme.white,
                        child: Icon(Icons.image_not_supported, color: Colors.grey.shade300, size: 40),
                      ),
                    ),
                  ),

                  // Discount Badge
                  if (product.discountPercentage != null && product.discountPercentage! > 0)
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(color: AppTheme.primaryColor, borderRadius: BorderRadius.circular(6)),
                        child: Text(
                          '${product.discountPercentage!.toInt()}% OFF',
                          style: const TextStyle(color: AppTheme.white, fontSize: 10, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),

                  // Wishlist Heart Icon
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppTheme.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey.shade300, width: 1.5),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            // TODO: Implement wishlist
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: Icon(Icons.favorite_border, color: Colors.grey.shade700, size: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Product Info Section
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Category
                  if (product.category != null)
                    Text(
                      product.category!,
                      style: TextStyle(color: const Color(0xFF8B4513), fontSize: 12, fontWeight: FontWeight.w500),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  const SizedBox(height: 4),

                  // Product Name
                  Text(
                    product.name,
                    style: const TextStyle(color: Color(0xFF2C2C2C), fontSize: 15, fontWeight: FontWeight.w600, height: 1.3),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),

                  // Price Section
                  Row(
                    children: [
                      Text(
                        '₹ ${product.currentPrice.toStringAsFixed(2)}',
                        style: const TextStyle(color: Color(0xFFD84315), fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      if (product.originalPrice != null && product.originalPrice! > product.currentPrice) ...[
                        const SizedBox(width: 8),
                        Text(
                          '₹ ${product.originalPrice!.toStringAsFixed(2)}',
                          style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey.shade600, fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Add to Cart / Quantity Control
                  if (isInCart && quantity > 0)
                    Container(
                      height: 44,
                      decoration: BoxDecoration(color: const Color(0xFF8B4513), borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: const BorderRadius.horizontal(left: Radius.circular(12)),
                              onTap: () => cartViewModel.decrementQuantity(product.id),
                              child: Container(
                                width: 44,
                                height: 44,
                                alignment: Alignment.center,
                                child: const Icon(Icons.remove, color: AppTheme.white, size: 20),
                              ),
                            ),
                          ),
                          Text(
                            '$quantity',
                            style: const TextStyle(color: AppTheme.white, fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: const BorderRadius.horizontal(right: Radius.circular(12)),
                              onTap: () => cartViewModel.incrementQuantity(product.id),
                              child: Container(
                                width: 44,
                                height: 44,
                                alignment: Alignment.center,
                                child: const Icon(Icons.add, color: AppTheme.white, size: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  else
                    SizedBox(
                      width: double.infinity,
                      height: 44,
                      child: OutlinedButton(
                        onPressed: () {
                          cartViewModel.addToCart(product);
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: AppTheme.white,
                          foregroundColor: const Color(0xFF8B4513),
                          side: BorderSide(color: Colors.grey.shade300, width: 1.5),
                          elevation: 0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.zero,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Add', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
                            SizedBox(width: 8),
                            Icon(Icons.shopping_cart_outlined, size: 18),
                          ],
                        ),
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
