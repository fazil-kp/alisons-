import 'package:alisons/data/models/banner_model.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/extensions.dart';

class BannerWidget extends StatelessWidget {
  final BannerModel banner;

  const BannerWidget({super.key, required this.banner});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            // Banner Image
            if (banner.imageUrl != null)
              CachedNetworkImage(
                imageUrl: banner.imageUrl!.imageUrl,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.grey.shade200,
                  child: const Center(child: CircularProgressIndicator()),
                ),
                errorWidget: (context, url, error) => Container(
                  width: double.infinity,
                  height: 200,
                  color: AppTheme.orange,
                  child: const Icon(Icons.image_not_supported, color: AppTheme.white),
                ),
              ),
            // Gradient overlay for better text visibility
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Colors.black.withOpacity(0.3), Colors.black.withOpacity(0.6)]),
              ),
            ),
            // Content (Title, Subtitle, Button)
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (banner.title != null && banner.title!.isNotEmpty)
                      Text(
                        banner.title!,
                        style: context.textTheme.titleLarge?.copyWith(color: AppTheme.white, fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    if (banner.subTitle != null && banner.subTitle!.isNotEmpty) ...[const SizedBox(height: 8), Text(banner.subTitle!, style: context.textTheme.bodyLarge?.copyWith(color: AppTheme.white, fontSize: 16))],
                    if (banner.buttonText != null && banner.buttonText!.isNotEmpty) ...[
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          // TODO: Handle banner action based on linkType and linkValue
                          if (banner.linkValue != null && banner.linkValue!.isNotEmpty) {
                            // Handle navigation based on linkType
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.orange,
                          foregroundColor: AppTheme.white,
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Text(banner.buttonText!, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
