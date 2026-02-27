import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromoCarousel extends StatelessWidget {
  const PromoCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data for banners
    final List<String> banners = [
      'https://placeholder.com/banner1.jpg',
      'https://placeholder.com/banner2.jpg',
      'https://placeholder.com/banner3.jpg',
    ];

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 150.h,
          viewportFraction: 0.9,
          enlargeCenterPage: true,
          autoPlay: true,
        ),
        items: banners.map((url) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Banner ${banners.indexOf(url) + 1}',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ),
                // In a real app, use CachedNetworkImage here
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
