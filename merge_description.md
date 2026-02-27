# Merge Description: Phase 3 - Promotional & Navigation Layer

## Overview
This phase introduces the primary engagement area below the header, including promotional banners, quick navigation links, and the voucher claim section.

## Implementation Details
### Home Feature Widgets
- **Promo Carousel**: Implemented `PromoCarousel` using `carousel_slider`. Supports responsive banner scaling and auto-play.
- **Quick Links Grid**: Implemented `QuickLinksGrid` as a horizontal horizontally scrolling list of circular action items (Win Free Gifts, Eid Sale, etc.).
- **Voucher Section**: Implemented `VoucherSection` with:
  - Custom `DashedRectPainter` to replicate the iconic "cut-out" voucher look without external dependency issues.
  - "Collect All" action button.
  - Decorative background and typography aligned with Phase 3 requirements.

## Verification
- [x] Carousel banners scroll smoothly and scale correctly.
- [x] Quick links are horizontally scrollable and icons render clearly.
- [x] Voucher cards feature correct dashed borders and background colors.
- [x] All components are responsive via `flutter_screenutil`.
