Summary
This PR implements the dynamic header and sticky search bar for the Daraz product listing page. It introduces the primary interactive search component and dynamic background transitions.

Changes
🔍 Dynamic Header & Search Bar
HomePage Implementation: Updated lib/features/home/presentation/pages/home_page.dart to include the SliverAppBar and search bar components.
Sliver Implementation:
SliverAppBar as a dynamic header with blue gradient.
HomeSearchBar widget for interactive search functionality.
HomeSearchBar Details:
Scan and Message action icons.
Rounded search field with Camera icon.
Primary "Search" button with Daraz branding (#F85606).

Verification
 Verified search bar remains pinned at the top during scroll.
 Verified all icons and buttons render correctly.
 Verified gradient transitions match the design.
 Verified mobile responsiveness for the header area.
