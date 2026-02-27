Summary
This PR fixes critical UI layout bugs — a massive gap between the Top Ranking section and the category tabs, and an overlap issue where Top Ranking would render over products when scrolling. Also includes prior UI polish and deprecation fixes.

Changes
🐛 Critical Layout Fixes
  NestedScrollView Migration: Replaced CustomScrollView with NestedScrollView to properly coordinate the header scroll area (promo, vouchers, flash sale, top ranking) with the body scroll area (product grid). This eliminates the viewport gap between sections.
  DefaultTabController Fix: Removed conflicting DefaultTabController(length: 4) from main.dart — it was overriding the correct DefaultTabController(length: 6) inside HomePage, causing TabBar rendering issues.
  SliverAppBar Removal: Replaced the problematic SliverAppBar (whose expandedHeight: 120.h scaled excessively on web) with a lightweight pinned _SearchBarHeaderDelegate with fixed 100px height.
  Flattened Sliver Hierarchy: Split the monolithic SliverToBoxAdapter (containing all 5 sections) into individual slivers so each section scrolls independently with correct z-ordering.

🎨 UI Polish & Bug Fixes
  Floating CTA: Improved positioning with increased bottom offset and softer shadow.
  Flash Sale Timer: Enhanced padding and typography (w900) for readability.
  Product Rankings: Updated with softOrangeBG and refined badge positioning.
  Voucher Design: Recalibrated DashedRectPainter for finer dashed borders.
  Product Cards: Standardized typography, icon scaling, and padding.

⚙️ Code Quality
  Migrated all .withOpacity() calls to the modern .withValues(alpha:) API.
  Audited ScreenUtil scaling across all polished components.

Files Changed
  lib/main.dart — Removed conflicting DefaultTabController wrapper.
  lib/features/home/presentation/pages/home_page.dart — Rewrote with NestedScrollView architecture.
  lib/features/home/presentation/widgets/flash_sale_section.dart — Timer polish + deprecation fix.
  lib/features/home/presentation/widgets/top_ranking_section.dart — Rank card styling refinements.
  lib/features/home/presentation/widgets/voucher_section.dart — Dashed border polish.
  lib/features/home/presentation/widgets/product_card.dart — Typography standardization + deprecation fix.

Verification
  ✅ Gap between Top Ranking and category tabs is eliminated.
  ✅ No section overlap when scrolling in any direction.
  ✅ Category tabs pin correctly below the search bar.
  ✅ Product grid renders immediately below tabs with no empty space.
  ✅ All components pass flutter analyze with zero issues.
