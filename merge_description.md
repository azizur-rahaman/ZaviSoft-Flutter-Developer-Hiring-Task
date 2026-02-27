# Merge Description: Phase 2 - Dynamic Header & Sticky Search Bar

## Overview
This phase implements the primary interactive header for the Daraz home page, including a sticky search bar with dynamic background behaviors.

## Implementation Details
### Home Feature
- **Page Implementation**: Updated `HomePage` to use `SliverAppBar` with a height of 120 pixels.
- **Dynamic Background**: Implemented a `LinearGradient` (Blue Gradient) in the `FlexibleSpaceBar` that pins and transforms on scroll.
- **Search Component**: Created `HomeSearchBar` widget:
  - QR Scanner action button.
  - Interactive `TextField` container with rounded corners.
  - Camera action icon.
  - Primary "Search" button with Daraz-signature orange styling.
  - Message/Messaging action button.

## Verification
- [x] Search bar remains pinned at the top when scrolling.
- [x] All icons (Scan, Camera, Messages) are rendered with correct colors.
- [x] Search button matches the Daraz theme (background: #F85606).
- [x] Header gradient correctly transitions as per the design requirement.
