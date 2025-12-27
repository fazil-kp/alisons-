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
        SizedBox(
          height: 350,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.4,
                margin: EdgeInsets.only(right: index < products.length - 1 ? 12 : 0),
                child: ProductCardWidget(product: products[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
