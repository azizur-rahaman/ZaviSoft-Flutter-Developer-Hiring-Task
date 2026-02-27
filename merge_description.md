# Merge Description: Phase 4 - Time-Sensitive & Ranked Sections

## Overview
This phase adds urgency and social proof to the home page by implementing real-time countdown sales and categorized product rankings.

## Implementation Details
### Home Feature Widgets
- **Flash Sale Section**:
  - Implemented a countdown timer header that updates in real-time.
  - Horizontally scrolling list of `FlashProductCard` instances with discount badges and progress bars (simulated).
- **Top Ranking Section**:
  - Implemented categorized ranking cards.
  - Added specific badges for "No 1", "No 2", etc., to highlight high-performing categories.
  - Linked header to "Discover More Rankings".

## Verification
- [x] Flash Sale countdown increments correctly.
- [x] Product ranking badges render in the correct stack order.
- [x] Horizontal scrolling for both sections is fluid.
- [x] UI scales correctly on smaller devices using `ScreenUtil`.
