import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../config/theme/app_colors.dart';

class QuickLinksGrid extends StatelessWidget {
  const QuickLinksGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: AppAssets.quickLinks.length,
        itemBuilder: (context, index) {
          final link = AppAssets.quickLinks[index];
          return Container(
            width: 75.w,
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 44.w,
                  width: 44.w,
                  child: CachedNetworkImage(
                    imageUrl: link['iconUrl']!,
                    fit: BoxFit.contain,
                    placeholder: (context, url) => Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        shape: BoxShape.circle,
                      ),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  link['title']!.replaceFirst(' ', '\n'),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w500,
                    height: 1.2, // Tweak line height for better multi-line look
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
