Summary
This PR implements the dynamic header and sticky search bar for the Daraz product listing page. It introduces the primary interactive search component and dynamic background transitions.

Changes
🔍 Header & Search Bar
HomePage Architecture: Updated lib/features/home/presentation/pages/home_page.dart to include the SliverAppBar and search bar components.
Sliver Implementation:
SliverAppBar as a pinned header with linear gradient.
HomeSearchBar integrated into the bottom property of SliverAppBar.
⚙️ UI & Components
HomeSearchBar Widget: Implemented standalone widget in lib/features/home/presentation/widgets/home_search_bar.dart.
Interactive Elements:
Scan and Message icons for utility actions.
Search TextField with Camera icon suffix.
Primary Search Button styled with Daraz orange theme (#F85606).
🚀 Configuration
Responsive Scaling: Applied flutter_screenutil for all header dimensions and spacing.
Clean Architecture: Maintained separation between core constants and feature-specific widgets.

Verification
 Verified sticky search bar persistence during scroll.
 Verified all action icons (Scan, Camera, Message) render correctly.
 Verified Search button appearance and branding alignment.
 Verified gradient background correctly transitions on scroll.
