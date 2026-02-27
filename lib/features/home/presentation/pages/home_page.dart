import 'package:flutter/material.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../config/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // This will be Phase 2: Dynamic Header & Sticky Search Bar
          const SliverAppBar(
            floating: true,
            pinned: true,
            title: Text(AppStrings.appName),
            backgroundColor: AppColors.primary,
          ),

          // Search Bar Placeholder
          SliverToBoxAdapter(
            child: Container(
              height: 100,
              color: AppColors.primary,
              child: const Center(
                child: Text(
                  'Search Bar Placeholder',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),

          // Phase 3: Promotional & Navigation Layer Placeholder
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              color: Colors.blue[100],
              child: const Center(child: Text('Banners & Quick Links')),
            ),
          ),

          // Category Navigation (Phase 5: Sticky Category Navigation)
          SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(
              TabBar(
                isScrollable: true,
                tabs: [
                  Tab(text: AppStrings.forYou),
                  Tab(text: AppStrings.hotDeals),
                  Tab(text: AppStrings.voucherMax),
                  const Tab(text: 'Categories'),
                ],
              ),
            ),
          ),

          // Phase 6: Product Grid
          SliverPadding(
            padding: const EdgeInsets.all(8.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.7,
              ),
              delegate: SliverChildBuilderDelegate((context, index) {
                return Card(child: Center(child: Text('Product $index')));
              }, childCount: 20),
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
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(color: AppColors.cardBackground, child: _tabBar);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
