Summary
This phase introduces the primary engagement area below the header, including promotional banners, quick navigation links, and the voucher claim section.

Changes
🖼️ Promotional & Navigation Area
Promo Carousel: Implemented using carousel_slider with responsive scaling and auto-play.
Quick Links Grid: Created horizontal scrolling list of circular action items for categorical navigation.
Voucher Section: Implemented with custom DashedRectPainter for the iconic cut-out look without external dependency issues.
⚙️ Core Integration
HomePage Assembly: Added PromoCarousel, QuickLinksGrid, and VoucherSection to the main scroll view.
Visual Depth: Implemented blue-to-white gradient backgrounds to blend the header into the promotional layer.
🚀 Configuration
Responsive Layout: Used ScreenUtil for all banner dimensions and icon sizing to ensure scaling across devices.

Verification
 Verified Carousel banners scroll smoothly and scale correctly.
 Verified Quick links are horizontally scrollable and icons render clearly.
 Verified Voucher cards feature correct dashed borders and background colors.
 Verified all components are responsive via flutter_screenutil.
