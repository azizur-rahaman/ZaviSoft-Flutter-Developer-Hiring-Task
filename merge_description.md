# Merge Description: Phase 5 - Sticky Category Navigation

## Overview
This phase implements the sticky category navigation bar that pins to the top of the viewport when the user scrolls past the promotional sections.

## Implementation Details
### Home Feature Components
- **Sticky Header Delegate**: Created `_SliverAppBarDelegate` by extending `SliverPersistentHeaderDelegate` to handle custom pinning behavior for any widget.
- **Category TabBar**:
  - Implemented as a `SliverPersistentHeader` with `pinned: true`.
  - Uses a scrollable `TabBar` for categories like "For You", "Hot Deals", "Voucher Max", etc.
  - Custom styling (active color: Daraz Primary Orange, indicator: orange underline).

## Verification
- [x] Category bar stays pinned at the top once the search bar reaches its final scroll position.
- [x] Horizontal scrolling of categories is smooth.
- [x] Tab indicators move correctly between categories.
- [x] The header background matches the scaffold color to provide a seamless sticky effect.
