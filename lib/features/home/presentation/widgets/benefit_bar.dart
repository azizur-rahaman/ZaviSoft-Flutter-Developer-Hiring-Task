import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BenefitBar extends StatelessWidget {
  const BenefitBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w), // Added horizontal margin
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.w),
      decoration: BoxDecoration(
        color: const Color(0xFF333333), // Dark charcoal as seen in design
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildItem(Icons.verified_user_outlined, 'Safe Payment'),
          _buildDivider(),
          _buildItem(Icons.local_shipping_outlined, 'Fast Delivery'),
          _buildDivider(),
          _buildItem(Icons.assignment_return_outlined, 'Free Return'),
        ],
      ),
    );
  }

  Widget _buildItem(IconData icon, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.white, size: 14.sp),
        SizedBox(width: 4.w),
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 12.h,
      width: 1,
      color: Colors.white.withValues(alpha: 0.3),
    );
  }
}
