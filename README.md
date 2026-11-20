# Accessibility review shop-staging.action.com

This document represents the findings of the accessibility review from 16 November - 26 November 2026.

This review is done according to the WCAG 2.1 level AA specification.

## Technologies used

During this review the following techniques and technologies have been used.

- Axe DevTools Pro Chrome extension (v4.140.0) using Axe Core version 4.13.0
- Google Chrome (v157.0.8103.79)
- Mozilla Firefox Developer Edition (v161.0b2)
- VoiceOver on macOS (v27.2.1 (26B131))
- Claude Code

For each page reviewed a full page scan is performed with Axe DevTools (the raw `.json` files of these reports are attached in this review). These reports have been converted to a human readable format with Claude Code. Recurring issues were grouped to avoid repetition.

Each page and flow were then manually reviewed with a keyboard and screenreader. Issues that have been found are grouped as components in an attempt to mimic coding style.

The final report is a combination of the issues found through the Axe DevTools and manual testing, grouped per component per page.

## Pages reviewed

The `Pages:` line of an issue uses the page names below. Pages without an axe report either did not have any issues reported, or were a variation of a page that has a report.

According to the scope document, these are the pages that have been reviewed. The scope document mentions user flows, each userflow could be tested within the set of these pages.

| Page | axe report (`.json`) |
|---|---|
| [Home](https://shop-staging.action.com/nl-nl) | `shop-staging.action.com-home-2026-11-16.json` |
| [Category (Wonen)](https://shop-staging.action.com/nl-nl/c/wonen) | `shop-staging.action.com-gezellig-en-stijlvol-wonen-2026-11-16.json` |
| [Moment (Herfst)](https://shop-staging.action.com/nl-nl/moment/herfst) | `shop-staging.action.com-herfst-2026-11-16.json` |
| [Search](https://shop-staging.action.com/nl-nl/search?q=pannenset) | `shop-staging.action.com-search-2026-11-16.json` |
| [Search dialog](https://shop-staging.action.com/nl-nl/search?q=pannenset) (opened from the header) | `shop-staging.action.com-search-dialog-2026-11-19.json` |
| [Product detail (Tafellamp jute)](https://shop-staging.action.com/nl-nl/p/8717807708603/tafellamp-jute) | `shop-staging.action.com-tafellamp-jute-2026-11-16.json` |
| [Product detail (Topper traagschuim)](https://shop-staging.action.com/nl-nl/p/8717796060591/topper-traagschuim-matras-90-x-200) | `shop-staging.action.com-topper-traagschuim-2026-11-16.json` |
| [Product detail (Contactgrill XL)](https://shop-staging.action.com/nl-nl/p/5054061475241/contactgrill-xl) | `shop-staging.action.com-contactgrill-xl-2026-11-16.json` |
| [Product detail (Vloerkleed Tenerife taupe)](https://shop-staging.action.com/nl-nl/p/8720604885811/vloerkleed-tenerife-taupe) | Variation of Product detail |
| [Product detail (MGO bijzettafel)](https://shop-staging.action.com/nl-nl/p/8720168447203/mgo-bijzettafel) | Variation of Product detail |
| [Cart](https://shop-staging.action.com/nl-nl/winkelwagen) | `shop-staging.action.com-bestel-overzicht-2026-11-16.json` |
| [Cart (empty)](https://shop-staging.action.com/nl-nl/winkelwagen) (no products in the cart) | `shop-staging.action.com-empty-shopping-card-2026-11-26.json` |
| [Checkout](https://shop-staging.action.com/nl-nl/checkout) | `shop-staging.action.com-checkout-2026-11-16.json` |
| [Login](https://shop-staging.action.com/nl-nl/login) | No issues found with Axe DevTools |
| [Forgot password](https://shop-staging.action.com/nl-nl/forgot-password) | No issues found with Axe DevTools |
| [Register](https://shop-staging.action.com/nl-nl/register) | `shop-staging.action.com-register-2026-11-26.json` |
| [Algemene voorwaarden](https://shop-staging.action.com/nl-nl/algemene-voorwaarden) | `shop-staging.action.com-algemene-voorwaarden-2026-11-16.json` |
| [Cookie statement](https://shop-staging.action.com/nl-nl/cookie-statement) | `shop-staging.action.com-cookiestatement-2026-11-16.json` |
| [Privacy statement](https://shop-staging.action.com/nl-nl/privacy-statement) | `shop-staging.action.com-privacystatement-2026-11-16.json` |
| [Klantenservice](https://shop-staging.action.com/nl-nl/klantenservice) | `shop-staging.action.com-klantenservice-2026-11-16.json` |
| [404](https://shop-staging.action.com/nl-nl/deze-pagina-bestaat-niet) | `shop-staging.action.com-404-2026-11-26.json` |

## Notes

### Impact levels

Each issue is marked with an impact level. These levels indicate the impact an issue has on the ability of someone trying to access the feature or content. These levels are taken from the Deque documentation page [Key Concepts and Terms / Impact levels](https://docs.deque.com/auditor/2.35/en/impact_levels). These levels are used by Axe Core in the automated reports. I used them in the hand reviewed issues as well.

#### Blocker

Blocker impact issues are those issues that have very significant obstacles for people with disabilities. Users who depend on assistive technology are prevented from using the core content. Blocker impact issues should be addressed with the utmost priority as they prevent key experiences on core functionality from being completed.

#### Critical

Critical impact issues are those issues that have significant obstacles for people with disabilities. Users who depend on assistive technology can get frustrated while trying to access the content. Some content that is inaccessible may make the organization vulnerable to legal action. This results in the issue preventing the website from being used successfully.

#### Serious

This issue results in some barriers for individuals with disabilities but would not prevent them from accessing fundamental elements or content.

Serious impact issues are those issues where users with disabilities encounter some obstacles as a result of this problem, but it does not prevent them from accessing fundamental components or content. Serious issues may make the organization vulnerable to legal action. Users must ensure to address serious issues once they have taken care of critical issues.

#### Moderate

Moderate impact issues are those issues that result in lesser impact on users than serious issues. While your end-user may appreciate a fix or patch, it won't necessarily impact their ability to use or interact with the website.

#### Minor

Minor impact issues are those issues that are like bugs that are difficult to replicate or occur intermittently. You can consider fixing these issues only if you find a low-risk solution.

### WCAG vs Recommendation

Not all issues found are a direct violation of a WCAG Success Criterion, but prevent users from interacting with a feature or content in some form. These issues are included and marked as Recommendation. Fixing these issues will improve the usability of the website.

### Announcements

For a couple of issues the **How to fix:** section suggests the use of `role="status"`. This method will only work when the _content_ of the element is being updated. When the element is destroyed and recreated (which oftentimes happens in a React context) the announcement is still not being read.

### The template used on the 404 page

While testing the 404 page, I noticed a difference in the page header and footer, the header and footer of the other pages in scope contain test id's which are not found on the 404. I made the assumption that the 404 template is an older template. I did not review the page header and footer component from this page.

