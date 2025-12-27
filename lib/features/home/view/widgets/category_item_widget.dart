import 'package:alisons/data/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/constants/app_constants.dart';

class CategoryItemWidget extends StatelessWidget {
  final CategoryModel category;

  const CategoryItemWidget({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (category.slug != null) {
          context.push('/products?category=${category.slug}');
        }
      },
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey.shade300, width: 2),
            ),
            child: ClipOval(
              child: category.imageUrl != null && category.imageUrl!.isNotEmpty
                  ? CachedNetworkImage(
                      imageUrl: '${AppConstants.imageBaseUrl}/uploads/categories/${category.imageUrl}',
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Container(
                        color: Colors.grey.shade200,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                      errorWidget: (context, url, error) => Container(
                        color: Colors.grey.shade200,
                        child: const Icon(Icons.category),
                      ),
                    )
                  : Container(
                      color: Colors.grey.shade200,
                      child: const Icon(Icons.category),
                    ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 100,
            child: Text(
              category.name,
              textAlign: TextAlign.center,
              style: context.textTheme.bodySmall,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

