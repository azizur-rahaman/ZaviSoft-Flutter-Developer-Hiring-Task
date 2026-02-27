import 'package:flutter/material.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../config/theme/app_colors.dart';
import '../widgets/home_search_bar.dart';
import '../widgets/promo_carousel.dart';
import '../widgets/quick_links_grid.dart';
import '../widgets/voucher_section.dart';
import '../widgets/flash_sale_section.dart';
import '../widgets/top_ranking_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Phase 2: Dynamic Header & Sticky Search Bar
          SliverAppBar(
            expandedHeight: 120,
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

          // Phase 3 & 4: Promotional, Navigation, Flash Sale, and Rankings
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
                ),
              ),
              child: const Column(
                children: [
                  PromoCarousel(),
                  QuickLinksGrid(),
                  VoucherSection(),
                  FlashSaleSection(),
                  TopRankingSection(),
                ],
              ),
            ),
          ),

          // Phase 5: Sticky Category Navigation
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(
              height: 48,
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

          // Placeholder for upcoming Phase 6
          SliverToBoxAdapter(
            child: Container(
              height: 400,
              color: AppColors.scaffoldBackground,
              child: const Center(child: Text('Grid Placeholder')),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
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
