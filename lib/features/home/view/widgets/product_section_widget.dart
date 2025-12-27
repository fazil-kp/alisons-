import 'package:alisons/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'product_card_widget.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/extensions.dart';

class ProductSectionWidget extends StatelessWidget {
  final String title;
  final List<ProductModel> products;
  final VoidCallback? onViewAll;

  const ProductSectionWidget({super.key, required this.title, required this.products, this.onViewAll});

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: context.textTheme.titleLarge?.copyWith(color: AppTheme.primaryColor, fontWeight: FontWeight.bold),
              ),
              if (onViewAll != null) TextButton(onPressed: onViewAll, child: const Text('View All')),
            ],
          ),
        ),
        const SizedBox(height: 12),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12, mainAxisExtent: 350),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductCardWidget(product: products[index]);
          },
        ),
      ],
    );
  }
}
