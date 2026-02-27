import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/theme/app_colors.dart';
import '../../../../core/constants/app_strings.dart';

class FlashSaleSection extends StatelessWidget {
  const FlashSaleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 10.h),
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              children: [
                Text(
                  AppStrings.flashSale,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(width: 10.w),
                _buildTimerBox('14'),
                _buildTimerDivider(),
                _buildTimerBox('31'),
                _buildTimerDivider(),
                _buildTimerBox('36'),
                const Spacer(),
                Text(
                  AppStrings.shopMore,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: AppColors.primary,
                  size: 16.sp,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          SizedBox(
            height: 160.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              itemCount: 5,
              itemBuilder: (context, index) {
                return _buildFlashProductCard();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimerBox(String value) {
    return Container(
      padding: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(2.r),
      ),
      child: Text(
        value,
        style: TextStyle(
          color: Colors.white,
          fontSize: 10.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildTimerDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: Text(
        ':',
        style: TextStyle(
          color: AppColors.primary,
          fontWeight: FontWeight.bold,
          fontSize: 12.sp,
        ),
      ),
    );
  }

  Widget _buildFlashProductCard() {
    return Container(
      width: 100.w,
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100.h,
            decoration: BoxDecoration(
              color: AppColors.scaffoldBackground,
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: const Center(child: Icon(Icons.image, color: Colors.grey)),
          ),
          SizedBox(height: 4.h),
          Text(
            '৳652',
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
          Row(
            children: [
              Text(
                '৳950',
                style: TextStyle(
                  fontSize: 10.sp,
                  color: AppColors.textSecondary,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                color: AppColors.primary.withOpacity(0.1),
                child: Text(
                  '-31%',
                  style: TextStyle(
                    fontSize: 8.sp,
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
