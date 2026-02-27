Summary
This phase completes the Daraz home page experience by adding persistent navigation elements and call-to-action overlays.

Changes
📱 Global Navigation & Persistent CTAs
BottomNavigationBar: Enhanced with high-visibility icon badges (e.g., "3.3" branding on Home icon) and themed selected/unselected states.
Floating CTA: Added a "SHOP NOW" persistent overlay with Daraz signature orange styling, shadow depth, and cart icon.

⚙️ UI & Polish
Navigation Labels: Integrated localized/centralized strings for Home, Messages, Cart, and Account.
Visual Hierarchy: Stacked the floating CTA above the scrolling content and product grid for immediate access.

🚀 Configuration
Responsive Layout: Applied ScreenUtil scaling to navigation bar heights, icon sizes, and floating badge dimensions.
Clean Architecture: Updated core constants to include all navigation-related string resources.

Verification
 Verified BottomNavigationBar labels and icons render with correct spacing and colors.
 Verified floating CTA remains persistent and accessible during scroll.
 Verified promotional badges (3.3) accurately overlaid on navigation icons.
 Verified layout responsiveness across different mobile screen widths.
