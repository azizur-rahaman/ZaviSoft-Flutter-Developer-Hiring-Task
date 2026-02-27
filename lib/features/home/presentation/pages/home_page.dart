import 'package:flutter/material.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../config/theme/app_colors.dart';
import '../widgets/home_search_bar.dart';
import '../widgets/promo_carousel.dart';
import '../widgets/quick_links_grid.dart';
import '../widgets/voucher_section.dart';

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

          // Phase 3: Promotional & Navigation Layer
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
                children: [PromoCarousel(), QuickLinksGrid(), VoucherSection()],
              ),
            ),
          ),

          // Placeholder for upcoming phases
          SliverToBoxAdapter(
            child: Container(
              height: 400,
              color: AppColors.scaffoldBackground,
              child: const Center(child: Text('Content Placeholder')),
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
