import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/theme/app_colors.dart';

class ProductCard extends StatelessWidget {
  final int index;
  const ProductCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.scaffoldBackground,
                borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
              ),
              child: Center(
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.grey,
                  size: 40.sp,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(6.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Name $index that might be very long',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.textPrimary,
                    height: 1.2,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  '৳1,250',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Icon(Icons.star, color: AppColors.ratingGold, size: 10.sp),
                    SizedBox(width: 2.w),
                    Text(
                      '4.8',
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: AppColors.textSecondary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      '(124)',
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
