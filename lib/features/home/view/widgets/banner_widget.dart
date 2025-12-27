import 'package:alisons/data/models/banner_model.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/extensions.dart';

class BannerWidget extends StatelessWidget {
  final BannerModel banner;

  const BannerWidget({
    super.key,
    required this.banner,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [
            AppTheme.orange,
            AppTheme.orange.withOpacity(0.8),
          ],
        ),
      ),
      child: Stack(
        children: [
          if (banner.imageUrl != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                imageUrl: banner.imageUrl!.imageUrl,
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => Container(
                  color: AppTheme.orange,
                ),
              ),
            ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (banner.title != null)
                  Text(
                    banner.title!,
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: AppTheme.white,
                    ),
                  ),
                if (banner.subtitle != null) ...[
                  const SizedBox(height: 8),
                  Text(
                    banner.subtitle!,
                    style: context.textTheme.titleLarge?.copyWith(
                      color: AppTheme.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // TODO: Handle banner action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.white,
                    foregroundColor: AppTheme.orange,
                  ),
                  child: const Text('Shop Now'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

