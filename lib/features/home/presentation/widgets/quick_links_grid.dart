import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../config/theme/app_colors.dart';

class QuickLinksGrid extends StatelessWidget {
  const QuickLinksGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> links = [
      {
        'title': 'Win Free Gifts',
        'icon': Icons.card_giftcard,
        'color': Colors.amber,
      },
      {
        'title': 'Eid Sale',
        'icon': Icons.shopping_bag,
        'color': AppColors.primary,
      },
      {
        'title': 'Free Delivery',
        'icon': Icons.local_shipping,
        'color': AppColors.statusGreen,
      },
      {'title': 'Buy Any 3', 'icon': Icons.filter_3, 'color': Colors.red},
      {'title': 'Daraz Freebie', 'icon': Icons.redeem, 'color': Colors.purple},
    ];

    return Container(
      height: 100.h,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: links.length,
        itemBuilder: (context, index) {
          return Container(
            width: 75.w,
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    color: links[index]['color'].withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    links[index]['icon'],
                    color: links[index]['color'],
                    size: 24.w,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  links[index]['title'],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.textPrimary,
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
