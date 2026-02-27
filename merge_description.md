# Summary
This PR implements the dynamic header and sticky search bar for the Daraz product listing page. It introduces the primary interactive search component and dynamic background transitions.

# Changes
### 🔍 Header & Search Bar
- **Dynamic Header**: Implemented a responsive `SliverAppBar` with a `LinearGradient` background transition.
- **HomeSearchBar Widget**: Created a standalone search component in `lib/features/home/presentation/widgets/home_search_bar.dart`.
- **Interactive UI**:
    - QR Scanner and Message/Communication action icons.
    - Rounded white search field with Camera icon suffix.
    - High-visibility "Search" button with Daraz-signature orange styling (#F85606).

### ⚙️ UI Polish & Configuration
- **Gradient Transition**: Configured `FlexibleSpaceBar` background to transition from blue to clear on scroll.
- **Responsiveness**: Applied `flutter_screenutil` for all dimensions, padding, and font scaling to ensure pixel-perfect results.

# Verification
- [x] Verified search bar remains pinned at the top during scroll.
- [x] Verified all icons, buttons, and text fields render correctly.
- [x] Verified gradient colors and transitions match the design requirements.
- [x] Verified UI responsiveness across different mobile device sizes.
