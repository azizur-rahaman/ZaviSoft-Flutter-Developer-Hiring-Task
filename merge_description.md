# Summary
This phase introduces the primary engagement area below the header, including promotional banners, quick navigation links, and the voucher claim section.

# Changes
### 🖼️ Promotional & Navigation Area
- **Promo Carousel**: Implemented `PromoCarousel` using `carousel_slider`. Supports responsive scaling and auto-play.
- **Quick Links Grid**: Implemented `QuickLinksGrid` as a horizontal horizontally scrolling list of circular action items (Win Free Gifts, Eid Sale, etc.).
- **Voucher Section**: Implemented `VoucherSection` with:
    - Custom `DashedRectPainter` to replicate the iconic "cut-out" voucher look without external dependency issues.
    - "Collect All" action button and themed background.

### ⚙️ Core Integration
- **HomePage Assembly**: Integrated Phase 3 components into the `SliverToBoxAdapter` with a gradient background transition from the header.
- **Responsive Scaling**: Utilized `ScreenUtil` for all banner dimensions and navigation icon sizing.

# Verification
- [x] Carousel banners scroll smoothly and scale correctly.
- [x] Quick links are horizontally scrollable and icons render clearly.
- [x] Voucher cards feature correct dashed borders and background colors.
- [x] All components are responsive via `flutter_screenutil`.
