### UI Craft Elevation

**You own visual taste, interaction latency, and accessibility. Every existing feature, route, form validation, and user workflow must remain 100% functional.**

Use when an older model shipped a working app whose frontend looks generic, cluttered, unresponsive, or sluggish, and the newer model can deliver a vastly sharper product experience.

1. Pin every user-facing flow first via **contract-pin** (**principle-pin-before-you-touch**). List every route, interactive control, form field, filter, modal, keyboard shortcut, and state transition (empty, loading, error, populated). Capture baseline screenshots or DOM snapshots of the current running app across desktop (1440px) and mobile (390px) viewports.
2. Audit UI ceilings via **ceiling-audit** focused on frontend craft. Identify generic AI visual tells (pill badge clutter, nested cards inside cards, arbitrary decorative dots, low-contrast text, uneven grids, awkward typography, janky layout shifts, missing `aria-label` or focus rings, broken mobile reflow).
3. Establish a cohesive design system in tokens and shared primitives before editing pages (**principle-upgrade-from-first-principles**, **principle-experience-first-polish**). Define deliberate display + body + mono typography, a disciplined 60-30-10 color palette with verified WCAG AA contrast, consistent spacing rhythm, and single-elevation surface hierarchy.
4. Subtract visual noise first (**principle-subtract-before-you-upgrade**). Remove redundant wrapper divs, dead CSS rules, unused UI libraries, and decorative widgets that serve no user action.
5. Upgrade layout and component craft wave by wave (navigation shell -> primary hero or workspace -> data views and forms -> secondary dialogs and states). Keep every data binding, API call, and validation rule intact (**principle-zero-behavioral-drift**). Ensure every interactive control has a real handler, visible focus ring, single-line label discipline, and 44px minimum touch target on mobile.
6. Run **unslop-code** across templates, styles, and microcopy. Replace robotic phrasing or placeholder jargon with crisp, human product language.
7. Verify on the real rendered browser (**principle-prove-equivalence-and-gain**). Inspect desktop and mobile captures, walk every pinned user journey end to end, confirm zero console/hydration errors, zero horizontal overflow, and zero clipped text. Run **upgrade-interrogate** to hunt for broken interactions or dropped edge states.

**Reply:** visual and UX upgrades made, accessibility and responsive fixes verified, before-vs-after capture notes, and confirmation that every pinned user flow passed intact.
