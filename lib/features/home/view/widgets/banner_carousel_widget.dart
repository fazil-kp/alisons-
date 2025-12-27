import 'package:alisons/data/models/banner_model.dart';
import 'package:flutter/material.dart';
import 'banner_widget.dart';

class BannerCarouselWidget extends StatefulWidget {
  final List<BannerModel> banners;

  const BannerCarouselWidget({
    super.key,
    required this.banners,
  });

  @override
  State<BannerCarouselWidget> createState() => _BannerCarouselWidgetState();
}

class _BannerCarouselWidgetState extends State<BannerCarouselWidget> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.banners.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemCount: widget.banners.length,
            itemBuilder: (context, index) {
              return BannerWidget(banner: widget.banners[index]);
            },
          ),
        ),
        // Page indicators
        if (widget.banners.length > 1)
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.banners.length,
                (index) => Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? Colors.orange
                        : Colors.grey.withOpacity(0.4),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

