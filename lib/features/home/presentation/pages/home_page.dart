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
            CustomScrollView(
              slivers: [
                // Phase 2: Dynamic Header & Sticky Search Bar
                SliverAppBar(
                  expandedHeight: 120.h,
                  floating: false,
                  pinned: true,
                  elevation: 0,
                  backgroundColor: AppColors.blueGradientEnd,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            AppColors.blueGradientStart,
                            AppColors.blueGradientEnd,
                          ],
                        ),
                      ),
                    ),
                    titlePadding: EdgeInsets.zero,
                    centerTitle: true,
                  ),
                  bottom: const PreferredSize(
                    preferredSize: Size.fromHeight(60),
                    child: HomeSearchBar(),
                  ),
                ),

                // Phase 3 & 4: Sections as individual slivers for better scroll behavior
                SliverToBoxAdapter(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColors.blueGradientEnd,
                          AppColors.scaffoldBackground,
                        ],
                        stops: [0.0, 0.3],
                      ),
                    ),
                    child: const Column(
                      children: [PromoCarousel(), QuickLinksGrid()],
                    ),
                  ),
                ),

                const SliverToBoxAdapter(child: VoucherSection()),
                const SliverToBoxAdapter(child: FlashSaleSection()),
                const SliverToBoxAdapter(child: TopRankingSection()),

                // Phase 5: Sticky Category Navigation
                SliverPersistentHeader(
                  pinned: true,
                  delegate: _SliverAppBarDelegate(
                    height: 48.h,
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

                // Phase 6: Product Grid
                SliverPadding(
                  padding: EdgeInsets.all(8.w),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.h,
                      crossAxisSpacing: 10.w,
                      childAspectRatio: 0.7,
                    ),
                    delegate: SliverChildBuilderDelegate((context, index) {
                      return ProductCard(index: index);
                    }, childCount: 20),
                  ),
                ),
              ],
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
                children: [
                  const Icon(Icons.home),
                  Positioned(
                    right: -2,
                    top: -2,
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        color: AppColors.badgeRed,
                        shape: BoxShape.circle,
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 12,
                        minHeight: 12,
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

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({required this.child, required this.height});

  final Widget child;
  final double height;

  @override
  double get minExtent => height;
  @override
  double get maxExtent => height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(color: AppColors.scaffoldBackground, child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
