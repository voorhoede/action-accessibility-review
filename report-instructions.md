# Generating report.md

`report.md` is the client report. It is **generated** from the notes and the axe reports, and then built into `report.html` with pandoc. Peter prints the HTML to PDF from Chrome.

Edit the sources, not `report.md`: the next generation overwrites it.

## Sources

| Source | Used for |
|---|---|
| `README.md` | Introduction (everything below its `#` title) |
| `conclusion.md` | Conclusion, right after the Introduction (copied as is, including its `#` heading) |
| `components/*.md` | Manual findings per shared component |
| `pages/*.md` | Manual findings per page |
| `axe-reports/*.md` | Automated findings. Use the `.md`, not the `.json`. Do not edit them. |

Never use `pages/*.report.md` (old drafts) or `CLAUDE.md` as a source.

## Build

Peter runs this himself (`!` in Claude Code). Do not start a server; he serves the repo at `http://localhost:3000/report`.

```
pandoc report.md -f gfm -s --shift-heading-level-by=1 --section-divs --lua-filter=severity.lua --lua-filter=toc.lua --css report.css --embed-resources -M title="Accessibility review shop-staging.action.com" -M lang=en -o report.html
```

- `-f gfm`: the notes put lists directly under a line of text; pandoc's own markdown would not see those as lists.
- `--shift-heading-level-by=1`: the `-M title` becomes the only `<h1>`. Parts are `<h2>`, components `<h3>`, issues `<h4>`.
- `toc.lua` instead of `--toc`: pandoc's `--toc` always puts the TOC above the Introduction. The filter places it right before `# Shared components` and lists parts and components, not issues (the depth is set in the filter; `--toc-depth` has no effect). It stops the build if that heading is missing.
- `--section-divs` + `severity.lua`: each issue becomes `<section class="level4">`; the filter puts `<div class="severity severity-{blocker|critical|serious|moderate|minor|none}">` around the severity line. `report.css` colours the issue from that.

The browser caches the page: add `?v=<n>` to the URL to see a new build.

## Structure of report.md

Start the file with an HTML comment holding the build command.

```
# Introduction            README.md content
# Conclusion …            conclusion.md content
                          (toc.lua puts the table of contents here)
# Shared components
## <Component>            one per row in the component map below
### <Issue>
# Page-specific components
## <Component>
### <Issue>
```

Within each component, sort issues by severity: Blocker, Critical, Serious, Moderate, Minor. Issues without a severity go last. Within the same severity: the order of the notes first, then axe issues.

## Issue format

Follow Peter's notes format, plus a Source line and (where known) a Pages line:

````md
### <Issue title>

**<Severity> - WCAG <number> <name> (level <level>)**

Source: manual review, axe DevTools ([`<rule>`](https://dequeuniversity.com/rules/axe/4.13/<rule>))\

<Description>

**How to fix:** <fix>
````

- The severity line must be a paragraph with **only** bold text, starting with Blocker, Critical, Serious, Moderate, Minor, Recommendation or TODO. Otherwise `severity.lua` misses it. After a build, the number of `class="severity ` in `report.html` must equal the number of issues (`### ` lines from `# Shared components` on) in `report.md`.
- Manual issues: copy title, severity line, description and fix exactly from the notes.
- If a manual issue has no severity line, write `**TODO: severity missing in notes**` and tell Peter.
- If an issue has no fix, write `**How to fix:** TODO: missing in notes` and tell Peter. Exception, Peter's choice: Home – hero image "Heading level 1 (Tijdelijke deals) is not visible and might be confusing" has no fix on purpose; leave the fix line out.

## Converting axe issues

Keep the wording of the axe `.md` files. Convert to the notes format:

- Severity line: `**<Impact> - WCAG <SC> <name> (level <level>)**`. When the axe "Success criteria" is "Best Practice": `**<Impact> - Best Practice**`. Capitalise the impact.
- Description: the one-line rule description under the axe heading ("Ensure …").
- Title: the axe rule title, unchanged.
- Drop the `Selector:` and `HTML:` lines (generated IDs change after a rebuild).
- **One issue per component + rule, across all pages.** List the pages it occurs on in `Pages:`.
- Elements (format "b"): start with `**Elements:**`, then list element names as bold bullets (`- **Add to cart button "Plaats in winkelwagen"**`), with the pages in brackets when they differ per element.
    - When the elements sit in different places, split the list with `**Elements in the product card:**`, `**Elements in the product details:**` etc. instead of `**Elements:**`.
    - Price: one bullet per price, not per whole and fractional part (`- **Hanglamp - jute: price € 29,95**`). Add `, fractional part "99" only` when only one part fails. In the product details list, name both parts: `price € 29,95, whole part "29" and fractional part "95"`.
    - A component without a shared `data-testid` (Button) gives each element its own `data-testid` after the name: ``- **Checkout link "Bestellen"**, `[data-testid="order-summary-checkout-button"]` (Cart)``.
- Then **one** `**How to fix:** Fix any of the following:` with the distinct axe messages, prefixed with what they apply to when there is more than one (e.g. `- Product card, whole part: …`). Do not repeat identical messages per element.
- Very long, uniform element lists (the filter counts) may be grouped per page and per filter.
- Keep axe `> **Reviewer note:**` blocks.
- Check the axe `Located in:` and the element texts before merging across pages: the same element can have different colours on different pages (add to cart button).

### Merging axe and manual findings

When an axe issue and a manual issue describe the same problem, make one issue:

- Title, severity from the axe issue.
- Description and fix from the manual issue if there is no content lost. When in doubt ask Peter.
- `Source:` lists both.
- Add one sentence: `axe DevTools reports …` with the axe description in quotes, then its Elements list.
- If the axe part has its own fix line, put it as `axe DevTools: Fix any of the following:` (or nest it under the element), so the manual `**How to fix:**` stays the only bold fix and tell Peter about it.

## Component map

Agreed with Peter. New notes or axe findings that don't fit: propose a component and ask.

The `Located in:` line under a component and under an axe issue holds only the element's own selector; drop the axe `inside …` part.

Exceptions, Peter's choice:
- Button has no shared `data-testid`. Its `Located in:` describes the shared markup: ``Located in: `<span class="truncate px-1">` inside a `rounded-full` `<button>` or `<a>` ``. Each element gets its `data-testid` in the element list (see Elements above).
- 404 page has no `data-testid` at all. The component gets no `Located in:`; put the axe report's reviewer note about the other template directly under `## 404 page`. Issues point to elements by section heading (`Located in: section "Altijd als eerste op de hoogte"`).

### Shared components

| Component | `data-testid` | Sources |
|---|---|---|
| Header – search bar | `desktop-search` | components/header.md "Search bar"; axe `aria-allowed-role` on the search form (all pages) — **merged** with "Search field is a form that is non-functional" |
| Header – shopping cart link | `cart-button` | components/header.md "Shopping cart link" |
| Header – main navigation | `desktop-navigation` | components/header.md "Main navigation" |
| Search dialog | `search-flyout-dialog` | components/search-dialog.md; axe search-dialog report |
| Footer – newsletter signup region | `shop-newsletter-section` | components/footer.md |
| Footer – Veilig winkelen list | `safe-shopping-section` | components/footer.md |
| Footer – award links | `award-link-section` | components/footer.md |
| Footer – brand statement bar | `shop-footer-brand-statement` | components/brand-statement-bar.md; axe `region` (checkout) |
| Cookie banner | | components/cookie-banner.md |
| USP list – tooltip | `shop-generic-usp-tooltip` | axe `button-name` only |
| Product card | `product-card` | components/product-card.md |
| Product tag | `product-tag` | axe `color-contrast` only |
| Price | `product-card-price` | axe `color-contrast`; components/price.md |
| Button | | axe `color-contrast` on the shop button (`<span class="truncate px-1">` inside a `rounded-full` button), orange and cyan variants: add to cart (product detail), submit (register), "Bestellen" (cart), "Bestellen en betalen" (checkout), "Verder winkelen" (empty cart). One issue, Peter's choice. Not the 404 button (other template). |
| Form field | | components/form-field.md |
| Pagination | `grid-pagination-items` | components/pagination.md |
| CMS markdown | `cms-markdown` | pages/privacy-statement.md; axe privacy report — `link-in-text-block` **merged** with "Links not identifiable without colour" |

### Page-specific components

| Component | `data-testid` | Sources |
|---|---|---|
| Home – hero image | | pages/home.md "Hero image" |
| Home – countdown banner (New Deals block) | `countdown-banner` | pages/home.md "New Deals block"; axe home `color-contrast` (same component, confirmed by Peter) |
| Product grid – filters | `grid-filters-desktop` | pages/category-page.md; axe filter `color-contrast` (wonen, search); axe `heading-order` "Filter" **merged** with "Heading structure can be improved" |
| Product details | `product-details` | pages/product-detail-page.md "Heading structure misses a level" **merged** with axe `heading-order` "Beschrijving" |
| Product details – variation chooser | `color-variant-chip` and `size-variant-chip` | pages/product-detail-page.md |
| Product details – Duurzamere keuze info block | `shop-sustainability-block` | pages/product-detail-page.md |
| Product details – images carousel | `section[aria-label="Images"]` | components/images-carousel.md |
| Cart – winkelmand item | `cart-line-item` | components/winkelmand-item.md |
| Checkout | `checkout-layout` | pages/checkout.md (back to cart, the two error issues, privacy info after submit); axe landmark rules |
| Checkout – delivery address | `delivery-address` | axe `autocomplete-valid`; pages/checkout.md address lookup, billing fields |
| Checkout – payment method | `checkout-payment-section` | pages/checkout.md payment provider issues |
| Login form | `login-form` | pages/login.md |
| Forgot password form | `forgot-password-form` | pages/forgot-password.md |
| Algemene voorwaarden – table of contents | `cms-table-of-contents` | pages/algemene-voorwaarden.md |
| Cookie statement – cookie declaration | `cookie-declaration` | pages/cookie-statement.md; axe cookiestatement `link-in-text-block` **merged** with "Multiple links not identifiable without colour", axe `heading-order` (all in one group, confirmed by Peter) |
| 404 page | | axe 404 report (`color-contrast` on the newsletter button, `page-has-heading-one`). The 404 page uses another template: other header and footer, no `data-testid`. |

Header search: axe `aria-allowed-role` on the header search form occurs on every page except checkout. The search dialog has its own `aria-allowed-role` issue.

### Page names for `Pages:`

| axe report slug | Page name |
|---|---|
| home | Home |
| gezellig-en-stijlvol-wonen | Category (Wonen) |
| herfst | Moment (Herfst) |
| search | Search |
| search-dialog | Search dialog |
| tafellamp-jute, topper-traagschuim, contactgrill-xl | Product detail (Tafellamp jute, Topper traagschuim, Contactgrill XL) |
| bestel-overzicht | Cart |
| empty-shopping-card | Cart (empty) — its product cards come from the "seen by you" slider, which depends on browsing history; the live page can differ from the scan |
| register | Register |
| 404 | 404 |
| checkout | Checkout |
| algemene-voorwaarden, cookiestatement, privacystatement, klantenservice | Algemene voorwaarden, Cookie statement, Privacy statement, Klantenservice |

Manual findings use the same names. Notes file → page name:

| Notes | Page name |
|---|---|
| pages/home.md | Home |
| pages/category-page.md | Category (Wonen) |
| pages/product-detail-page.md "Variation chooser" | Product detail (Vloerkleed Tenerife taupe) |
| pages/product-detail-page.md "Duurzamere keuze info block" | Product detail (MGO bijzettafel) |
| pages/checkout.md | Checkout |
| pages/login.md | Login |
| pages/forgot-password.md | Forgot password |
| pages/algemene-voorwaarden.md, cookie-statement.md, privacy-statement.md | Algemene voorwaarden, Cookie statement, Privacy statement |

Every page name, with its URL and axe `.json` file, is listed in `README.md` under "Pages reviewed". Add new pages there too. Put no URLs in `Pages:` lines.

## Before reporting the generation as done

1. Every `###` in `pages/` and `components/` and every axe issue appears in `report.md` (or is merged; say which).
2. `sed -n '/^# Shared components/,$p' report.md | grep -c '^### '` equals the number of `class="severity ` in the built `report.html`. The `###` headings in the Introduction (from `README.md`) are not issues, so they are skipped.
3. List all `TODO` lines.
4. List anything new that isn't in the component map, and any wording you added yourself.
5. Ask Peter to build, then check the HTML in the browser.
