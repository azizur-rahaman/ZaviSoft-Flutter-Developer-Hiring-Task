Summary
This phase addresses UI inconsistencies and layout polish items to ensure a premium, Daraz-like experience.

Changes
🎨 UI Polish & Bug Fixes
Floating CTA Improvement: Wrapped the "SHOP NOW" button in a responsive Stack with increased bottom offset and softer signature orange shadow.
Flash Sale Timer: Enhanced timer box padding and typography (w900) for better readability.
Product Rankings: Updated rank cards with softOrangeBG and refined ranking badge positioning for a cleaner visual hierarchy.
Voucher Design: Recalibrated DashedRectPainter for a finer, more professional dashed border effect.
Product Cards: Standardized typography, icon scaling, and internal padding to match Daraz design density.

⚙️ Core Cleanup
Deprecation Fixes: Migrated all .withOpacity() calls to the modern .withValues(alpha:) API.
Responsive Scaling: Audited and applied ScreenUtil scaling (w, h, r, sp) across all polished components.

Verification
 Verified Floating CTA does not obstruct navigation elements.
 Verified Timer text and ranking badges are sharp and legible.
 Verified Voucher borders render smoothly without aliasing issues.
 Verified all components pass flutter analyze without deprecation warnings.
