import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../config/theme/app_colors.dart';
import '../widgets/home_search_bar.dart';
import '../widgets/promo_carousel.dart';
import '../widgets/quick_links_grid.dart';
import '../widgets/voucher_section.dart';
import '../widgets/flash_sale_section.dart';
import '../widgets/top_ranking_section.dart';
import '../widgets/product_card.dart';

import '../widgets/benefit_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackground,
        body: Stack(
          children: [
            NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  // Phase 2 & 3: Stacked Header (Carousel Background + Search Bar)
                  SliverAppBar(
                    expandedHeight:
                        160.h, // Adjusted to match new 38:20 aspect ratio
                    pinned: true,
                    elevation: 0,
                    backgroundColor: AppColors.blueGradientEnd,
                    flexibleSpace: FlexibleSpaceBar(
                      background: const PromoCarousel(),
                      collapseMode: CollapseMode.pin,
                    ),
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(60.h),
                      child: const HomeSearchBar(),
                    ),
                  ),

                  // New: Benefit Bar
                  const SliverToBoxAdapter(child: BenefitBar()),

                  // Phase 3: Quick Links
                  SliverToBoxAdapter(
                    child: Container(
                      color: AppColors.scaffoldBackground,
                      child: const QuickLinksGrid(),
                    ),
                  ),

                  // Voucher Section
                  const SliverToBoxAdapter(child: VoucherSection()),

                  // Flash Sale
                  const SliverToBoxAdapter(child: FlashSaleSection()),

                  // Top Ranking
                  const SliverToBoxAdapter(child: TopRankingSection()),

                  // Sticky Category Navigation - pins below the search bar
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _TabBarDelegate(
                      child: TabBar(
                        isScrollable: true,
                        labelColor: AppColors.primary,
                        unselectedLabelColor: AppColors.textSecondary,
                        indicatorColor: AppColors.primary,
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: [
                          Tab(text: AppStrings.forYou),
                          Tab(text: AppStrings.hotDeals),
                          Tab(text: AppStrings.voucherMax),
                          const Tab(text: 'Fashion'),
                          const Tab(text: 'Electronics'),
                          const Tab(text: 'Home & Living'),
                        ],
                      ),
                    ),
                  ),
                ];
              },
              // Product Grid as the scrollable body
              body: GridView.builder(
                padding: EdgeInsets.all(8.w),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.h,
                  crossAxisSpacing: 10.w,
                  childAspectRatio: 0.7,
                ),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ProductCard(index: index);
                },
              ),
            ),

            // Phase 7: Floating CTA
            Positioned(
              bottom: MediaQuery.of(context).padding.bottom + 16.h,
              left: 16.w,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(24.r),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withValues(alpha: 0.3),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.shopping_cart_checkout,
                      color: Colors.white,
                      size: 18.sp,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      AppStrings.shopNow,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.navUnselected,
          items: [
            BottomNavigationBarItem(
              icon: Stack(
                clipBehavior: Clip.none,
                children: [
                  const Icon(Icons.home),
                  Positioned(
                    right: -6,
                    top: -4,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 1,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.badgeRed,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Text(
                        '3.3',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              label: AppStrings.home,
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: AppStrings.messages,
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: AppStrings.cart,
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: AppStrings.account,
            ),
          ],
        ),
      ),
    );
  }
}

/// Pinned tab bar delegate
class _TabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar child;

  _TabBarDelegate({required this.child});

  @override
  double get minExtent => 48;
  @override
  double get maxExtent => 48;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(color: AppColors.scaffoldBackground, child: child);
  }

  @override
  bool shouldRebuild(_TabBarDelegate oldDelegate) => false;
}
