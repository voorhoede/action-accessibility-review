<!--
  Build: pandoc report.md -f gfm -s --shift-heading-level-by=1 --section-divs --lua-filter=severity.lua --lua-filter=toc.lua --css report.css --embed-resources -M title="Accessibility review shop-staging.action.com" -M lang=en -o report.html
-->

# Introduction

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

# Conclusion and closing thoughts

The website has a solid base when it comes to accessibility. Most issues are concentrated in a small number of shared components and patterns. A couple of issues will be difficult to manage since they rely on company colours. Changing them will be a challenge.

Although the number of issues and affected components is relatively small, there are some areas with serious issues that need to be addressed.

- **State change announcements**: Submitting a form or placing an item in the shopping cart does not get announced to screenreader users. While properly visible, these flows can feel very broken for screenreader users. Most of the issues with an impact of **Blocker** and **Critical** fall in this category.
- **Errors in forms**: Errors are being generated when forms are not filled in properly. However because there is no programmatic connection between the errors and the form fields, these errors get lost.
- **Focus management**: For keyboard users focus management is the area that needs to be improved. While not in many places, when it goes wrong, it is hard to recover from. 

The component with the potential to make the site better usable in general is the product card. It is reused across various pages and fixing its issues will gain a lot of usability improvements.

# Shared components

## Header – search bar

Located in: `[data-testid="desktop-search"]`

### Focus jumps after closing the search banner

**Serious - WCAG 2.4.3 Focus Order (level A)**

Source: manual review

When the search bar is being used, a dialog replaces the initial component. When that dialog is closed, the focus state is lost and moves to `<body>`. The next tab press continues from the end of the page. The user expects to continue tabbing through the page from the search button, but nothing indicates that the focus has been moved.

**How to fix:** After closing the search dialog, bring the focus back to the button.

> **Note**: when the user closes the dialog with `Escape`, the focus stays on the now hidden input field. The fix is the same.

### ARIA role should be appropriate for the element

**Minor - Best Practice**

Source: manual review, axe DevTools ([`aria-allowed-role`](https://dequeuniversity.com/rules/axe/4.13/aria-allowed-role))\
Pages: Home, Category (Wonen), Moment (Herfst), Search, Product detail (Tafellamp jute, Topper traagschuim, Contactgrill XL), Cart, Cart (empty), Register, Algemene voorwaarden, Cookie statement, Privacy statement, Klantenservice

The search field in the header looks like a form, but is a button that opens a dialog. The element is wrapped in a `<form role="group">`. Because of the `role="group"` the semantics of the form are lost. The search icon has a label of `Zoeken`, but is permanently disabled. A screenreader user would hear an unavailable "Zoeken" button. A user who uses voice control that would say: "click Zoeken" can not activate the dialog.

axe DevTools reports the same element: "Ensure role attribute has an appropriate value for the element".

**Elements:**

- **Search form "Waar ben je naar op zoek?"**

axe DevTools: Fix any of the following: ARIA role group is not allowed for given element

**How to fix:**
- Replace the `<form role="group">` element with a `<search>` element. So it will end up in the landmarks list.
- Put the search icon (with `aria-hidden="true"`) inside the button 

```html
<search class="…">
  <button type="button" aria-controls="search-dialog" aria-haspopup="dialog"
          data-testid="search-flyout-input-button">
    <span>Waar ben je naar op zoek?</span>
    <svg aria-hidden="true" data-testid="SearchMagnifyingGlass">…</svg>
  </button>
</search>
```

> **Reviewer note:** `<form>` does not allow `role="group"`. Since this is the site search, `role="search"` is allowed on `<form>` and exposes it as a search landmark. Alternatively remove the role. See [ARIA in HTML](https://www.w3.org/TR/html-aria/) (allowed roles for `form`: none, presentation or search).

## Header – shopping cart link

Located in: `[data-testid="cart-button"]`

### Items in cart counter is not part of the button label

**Moderate - WCAG 1.3.1 Info and Relationships (level A)**

Source: manual review

The item count badge is not included in the label of the link, it is only visually laid on top of it. Although a screenreader user can get to the number, there is no relationship to the link, and thus the relationship can not be established.

**How to fix:** Include the number in the `aria-label` like so `aria-label="Winkelwagen, 3 artikelen"`

## Header – main navigation

Located in: `[data-testid="desktop-navigation"]`

### Focus indicator is partly / largely hidden on each link

**Serious - WCAG 2.4.7 Focus Visible (level AA)**

Source: manual review

When tabbing through the list, the focus indicator is clipped off. Especially the first and last item suffer from this because they only get the indicator on one edge. Making it impossible to see what item has focus. 

**How to fix (2 suggestions):**
- Suggestion 1: Provide vertical and horizontal margin to the `<a>` element (4px)
- Suggestion 2: Provide a negative `outline-offset` of `2px` and a `padding-inline` of `4px` to the `<a>` element

### Focus jumps after closing the mobile menu

**Serious - WCAG 2.4.3 Focus Order (level A)**

Source: manual review

When the mobile menu is opened, the menu covers the whole viewport. When the menu is closed, the focus state is lost and moves to `<body>`. The next tab press continues from the end of the page. The user expects to continue tabbing through the page from the menu trigger, but nothing indicates that the focus has been moved.

**How to fix:** After closing the mobile menu, bring the focus back to opening button.

### Contrast of focus indicator in Thema's submenu is poor

**Moderate - Recommendation**

Source: manual review

The focus indicator of the menu items under the `Thema's` submenu is poor. This focus ring is set against a large image which makes it hard to spot.

On the mobile viewport this also happens where the tiles are in the mobile menu

**How to fix (2 suggestions):**
- Suggestion 1: Give the focus indicator an offset via `outline-offset: 2px`
- Suggestion 2: Make the focus indicator thicker

## Search dialog

Located in: `[data-testid="search-flyout-dialog"]`

### Buttons must have discernible text

**Critical - WCAG 4.1.2 Name, Role, Value (level A)**

Source: axe DevTools ([`button-name`](https://dequeuniversity.com/rules/axe/4.13/button-name))\
Pages: Search dialog

Ensure buttons have discernible text

**Elements:**

- **Clear search button (X icon), shown once text is typed in `[data-testid="search-flyout-input-field"]`**

**How to fix:** Fix any of the following:
- Element does not have inner text that is visible to screen readers
- aria-label attribute does not exist or is empty
- aria-labelledby attribute does not exist, references elements that do not exist or references elements that are empty
- Element has no title attribute
- Element does not have an implicit (wrapped) `<label>`
- Element does not have an explicit `<label>`
- Element's default semantics were not overridden with role="none" or role="presentation"

> **Reviewer note:** Suggestion:
> ```html
> <button>
>  <span class="sr-only">Verwijder zoekopdracht</span>
>  <svg>...</svg>
> </button>
> ```

### Close button is announced wrong

**Serious - WCAG 2.5.3 Label in Name (level A)**

Source: manual review

The button with the visual label **Sluiten X** is announced as **Verwijder zoekopdracht**. The information screenreader users receive is different from the information sighted users see. And the **Verwijder zoekopdracht** is not the action performed when the button is clicked. When the button is clicked, the modal closes completely and in that process indeed removing the search query. But to get to the previous state, the user has to open the dialog again. The name **Verwijder zoekopdracht** is a better fit for the `X` button inside the `<form>` element.

**How to fix:** Use `aria-label="Sluiten zoekvenster"` or similar wording

### The page behind the dialog is reachable for a screenreader

**Serious - Recommendation**

Source: manual review

The dialog is opened as a non-modal dialog. Although there is a keyboard trap, the virtual cursor of a screenreader can still read and interact with the dimmed page. This can lead to confusion.
Especially on mobile this is an issue where users move by swiping. Once the cursor enters the hidden page, the user can not track its location because of the dialog still open.

**How to fix:** Open the dialog via `showModal()`, that makes the background inert and handles Escape natively

### The whole search modal gets announced when searching

**Moderate - Recommendation**

Source: manual review

When the user searches, all the content in the modal get announced. Although it is good to announce changes when search results or popular search terms change, the way it is set up now, the provided information makes the actual change very hard to hear.

**How to fix:** The `aria-live="polite"` placed on `div[data-testid="search-suggestions"]` should be removed. Instead the text indicating the number of results should be announced. That informs the user that there are changes. The user can then browse further through the dialog to find them

### Visual headings are not marked up as such

**Moderate - WCAG 1.3.1 Info and Relationships (level A)**

Source: manual review

The dialog has no headings although the text is defining the content that follows and / or is styled like a heading. Texts like; "Eerder gezocht", "Populaire zoektermen", "Helaas, we konden geen resultaten vinden voor '...'" and "Probeer dit eens:" are candidate to become headings.

**How to fix:** Use `<h2>` elements for these texts

### Delete buttons all have the same name

**Moderate - Recommendation**

Source: manual review

Each recent search item has a button `X` with the name "Verwijderen". In a list of buttons it is not clear which button deletes what

**How to fix:** use `aria-label="Verwijder 'lamp' uit eerder gezocht"`.

### The _Bekijk alle_ button label can be improved

**Minor - Recommendation**

Source: manual review

The _Bekijk alle_ label is visually connected to the results. But for screenreader users, the label can be improved

**How to fix:** include a hidden label like so:

```html
<button>Bekijk alle <span class="sr-only">resultaten</span></button>
```

### ARIA role should be appropriate for the element

**Minor - Best Practice**

Source: axe DevTools ([`aria-allowed-role`](https://dequeuniversity.com/rules/axe/4.13/aria-allowed-role))\
Pages: Search dialog

Ensure role attribute has an appropriate value for the element

**Elements:**

- **Search form "Zoeken"**

**How to fix:** Fix any of the following: ARIA role group is not allowed for given element

> **Reviewer note:** `<form>` does not allow `role="group"`. Since this is the site search, `role="search"` is allowed on `<form>` and exposes it as a search landmark. Alternatively remove the role. See [ARIA in HTML](https://www.w3.org/TR/html-aria/) (allowed roles for `form`: none, presentation or search).

## Footer – newsletter signup region

Located in: `[data-testid="shop-newsletter-section"]`

### Non descriptive label of the region

**Minor - Recommendation**

Source: manual review

The label of the region is defined in the `aria-label` as `Nu inschrijven`. That phrase does not describe that it is about the newsletter.

**How to fix:** A suggestion: `aria-label="Inschrijven op de nieuwsbrief"`. An alternative would be to let the region be described by its heading: `<section aria-labelledby="shop-footer-newsletter-title">...</section>`.

### Non descriptive label of the signup button

**Minor - Recommendation**

Source: manual review

The button on its own does not provide enough context.

**How to fix:** include a visually hidden text to augment the description like so:

```html
<a>
  Nu inschrijven <span class="sr-only">op de nieuwsbrief</span>
</a>
```

## Footer – Veilig winkelen list

Located in: `[data-testid="safe-shopping-section"]`

### Region label is in English

**Minor - WCAG 3.1.2 Language of Parts (level AA)**

Source: manual review

The region is named "Safe Shopping" via `aria-label`, while the page is in Dutch. Screenreaders will pronounce the label with a Dutch voice.

**How to fix:** Use the existing `<h2>` as a label via `aria-labelledby` instead of `aria-label`. Using `lang="en"` does not work since that marks the whole element as `en`.

### Explicit role is missing

**Minor - Recommendation**

Source: manual review

On the `<ul>` element, there is no explicit `role` of `list`. But the `list-style` is set to `none`. In Safari that means that the list loses its semantics completely.

**How to fix:** Add `role="list"` to the `<ul>`

### Text in logo is missing in alt attribute

**Minor - WCAG 1.1.1 Non-text Content (level A)**

Source: manual review

The Thuiswinkel waarborg image has an alt text of `Thuiswinkel`. The word `waarborg` is included in the image, but missing in the alt text.

The iDeal image has an alt text of `iDeal`. The word `wero` is included in the image but missing in the alt text

**How to fix:** Add the full text in the `alt` attribute `alt="iDeal | Wero"` and `alt="Thuiswinkel waarborg"`

## Footer – award links

Located in: `[data-testid="award-link-section"]`

### Region label is in English

**Minor - Recommendation**

Source: manual review

The region is named "Award links" via `aria-label`, while the page is in Dutch. Screenreaders will pronounce the label with a Dutch voice.

**How to fix**: Use a Dutch label like "Onderscheidingen links". But since the word "Award" is relatively commonplace in Dutch, and might be preferable over "Onderscheidingen". In that case, add a `<h2 id="award-links-label" class="sr-only" lang="en">Award links</h2>` in the region. Then use the `id` of that `<h2>` as value in `aria-labelledby` on the region instead of `aria-label`

## Footer – brand statement bar

Located in: `[data-testid="shop-footer-brand-statement"]`

### Animation can not be paused

**Serious - WCAG 2.2.2 Pause, Stop, Hide (level A)**

Source: manual review

On a mobile screen displays an animation that starts on its own, can not be paused or stopped and runs forever. The motion distracts people with attention or reading disabilities from the products around it. The motion is so fast, users who rely on magnification have too short a time to read the sentences.

**How to fix:** The best fix would be to show the three sentences stacked on top of each other. If the rotation needs to stay, include a pause / stop button or stop the rotation after 5 seconds.

### All page content should be contained by landmarks

**Moderate - Best Practice**

Source: axe DevTools ([`region`](https://dequeuniversity.com/rules/axe/4.13/region))\
Pages: Checkout

Ensure all page content is contained by landmarks

**Elements:**

- **Brand statement "Uniek online assortiment in de webshop"**
- **Brand statement "Bezorgd binnen 3 werkdagen"**
- **Brand statement "Elke maandag om 12.00 uur nieuwe deals"**

**How to fix:** Fix any of the following: Some page content is not contained by landmarks

> **Reviewer note:** This issue is specific to the brand statement bar in the checkout page. The footer element (`[data-testid="shop-footer-usp-bar"]`) is marked up as a `<div>`. Make it a `<footer>` instead.

## Cookie banner

### Primary buttons "Accepteren" and "Selectie toestaan" text contrast is too low

**Serious - WCAG 1.4.3 Contrast (Minimum) (level AA)**

Source: manual review

The button text lack enough contrast. The contrast of the white text on the orange background is 2.49:1. It needs to be 4.5:1.

**How to fix:** Use a darker orange.

### "Altijd actief" text contrast is too low

**Serious - WCAG 1.4.3 Contrast (Minimum) (level AA)**

Source: manual review

The green on white contrast is 4.00:1. It needs to be 4.5:1

**How to fix:** Use a darker green

### Focus is lost when the modal is closed

**Moderate - WCAG 2.4.3 Focus Order (level A)**

Source: manual review

When the modal is closed, the focus is lost. By default it moves back to the `<body>`. The focus should return to the trigger that opened the modal. Since this modal is opened by default. That trigger does not exist.

**How to fix:** move the focus to the skiplink when the modal is closed. To make sure the skiplink won't be visible to users that do not use a keyboard, change the visible state of the skiplink from `:focus` to `:focus-visible`. To do that switch `focus-within:not-sr-only` into `has-[:focus-visible]:not-sr-only` in the skiplink (assumed Tailwind v4).

## USP list – tooltip

Located in: `[data-testid="shop-generic-usp-tooltip"]`

### Buttons must have discernible text

**Critical - WCAG 4.1.2 Name, Role, Value (level A)**

Source: axe DevTools ([`button-name`](https://dequeuniversity.com/rules/axe/4.13/button-name))\
Pages: Cart, Product detail (Tafellamp jute, Topper traagschuim, Contactgrill XL)

Ensure buttons have discernible text

**Elements:**

- **Info button for USP "Wettelijke garantie minimaal 2 jaar"**

**How to fix:** Fix any of the following:
- Element does not have inner text that is visible to screen readers
- aria-label attribute does not exist or is empty
- aria-labelledby attribute does not exist, references elements that do not exist or references elements that are empty
- Element has no title attribute
- Element does not have an implicit (wrapped) `<label>`
- Element does not have an explicit `<label>`
- Element's default semantics were not overridden with role="none" or role="presentation"

## Product card

Located in: `[data-testid="product-card"]`

### The add-to-cart button is nested inside the card link

**Critical - WCAG 4.1.2 Name, Role, Value (level A)**

Source: manual review

The "Plaats in winkelwagen" button is inside the card link. The [HTML content model of `a`](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-a-element) says there must be "no interactive content descendant". VoiceOver treats the link as a single element. A user can not add a product to the shopping cart via the card, they have to go to the product detail page first, which is a big detour.

**How to fix:** Move the button out of the link. The card pattern from the "All content of the card is inside the link" issue makes this possible: the link only wraps the title, and the button sits next to it.

### All content of the card is inside the link

**Serious - Recommendation**

Source: manual review

All content of the card, including the title, subtitle and price, is inside one link. Screenreaders read the whole card as the link's name, which is long. Screenreader users who browse a list of links, or tab through the page, hear this long name for every card.

Although this is not a direct violation, it severely hinders screenreader users, and leads to multiple additional issues. Heydon Pickering describes a solution in the [Cards](https://inclusive-components.design/cards/) chapter of Inclusive Components.

**How to fix:** Wrap only the product title in the link, and use a pseudo-element on the link to make the whole card clickable.

### The add-to-cart button does not provide a status message

**Serious - WCAG 4.1.3 Status Message (level AA)**

Source: manual review

When pressing the "Plaats in winkelwagen" button, only a visual loader indicator is being shown. The counter in the "Winkelwagen" button in the header is updated, but that button is often out of view. Because there is no status message provided, a screenreader user does not know that the action was successful and will probably attempt to re-add the item, resulting in multiple items being added.

There _is_ a message announced when the maximum amount of items is added. It is presented as a toast message which is also announced. So a mechanism for announcing the successful addition of an item could use that same feature

**How to fix:** Write a message (like "MGO Bijzettafel toegevoegd aan winkelwagen") to a `role="status"` region. See the [Using `role=status` to present status messages](https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA22) Technique for an example. 

### Sustainability tag and price lose their text once moved out of the card link

**Serious - WCAG 1.1.1 Non-text Content (level A) / 1.3.1 Info and Relationships (level A)**

Source: manual review

This issue does not occur yet. It appears when the 'All content of the card is inside the link' issue is fixed as suggested: the sustainability tag and the large price no longer live inside an element with a role. The containing span has a default role of `generic`. ARIA 1.2 forbids naming the `generic` role, so screenreaders will not pick up the name.

**How to fix:** On the elements with `aria-label="Duurzaamheid"` add `role="img"`. For the price, see the Price component issue

### The title is repeated three times in the link

**Moderate - Recommendation**

Source: manual review

The name of an item is repeated 3 times in the card label. Because all the content of the card is inside the `<a>` element, all the containing content is being part of that name. The card has the name of the item as text, and twice as `alt` on an image.

**How to fix:** Fix the `All content of the card is inside the link` issue

### The product title is a `<span>` not a heading

**Minor - Recommendation**

Source: manual review

If the product title would be a heading, the list of items could be navigated through the heading list, [which most of the screenreader users use as primary way of navigation](https://webaim.org/projects/screenreadersurvey10/#finding)

**How to fix:** (after the content is removed from the link) wrap the `<a>` element inside a `<h3>`. Make sure that the heading level used is appropriate for the context in which it is used

## Product tag

Located in: `[data-testid="product-tag"]`

### Elements must meet minimum color contrast ratio thresholds

**Serious - WCAG 1.4.3 Contrast (Minimum) (level AA)**

Source: axe DevTools ([`color-contrast`](https://dequeuniversity.com/rules/axe/4.13/color-contrast))\
Pages: Home, Category (Wonen), Moment (Herfst), Product detail (Tafellamp jute, Topper traagschuim), Cart (empty)

Ensure the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds

**Elements in the product card:**

- **LSC Smart Connect buiten wandlamp - kubus: product tag "Superdeal"** (Home, Moment (Herfst), Product detail (Tafellamp jute))
- **Hanglamp - jute: product tag "Weekactie"** (Home, Category (Wonen))
- **Ronde hanglamp - smoke mat zwart: product tag "Weekactie"** (Home, Category (Wonen), Product detail (Tafellamp jute, Topper traagschuim))
- **Tafellamp - jute: product tag "Superdeal"** (Home, Category (Wonen), Product detail (Topper traagschuim), Cart (empty))
- **Dino knuffel XXL: product tag "Superdeal"** (Home, Product detail (Tafellamp jute))
- **Opblaasbaar skelet Halloween: product tag "Superdeal"** (Home)
- **LSC Smart Connect stekker: product tag "Weekactie"** (Home)
- **Etro vloerkleed - beige: product tag "Weekactie"** (Category (Wonen))

**Elements in the product details:**

- **Image gallery (section "Images"): product tag "Superdeal"** (Product detail (Tafellamp jute))
- **Image gallery (section "Images"): product tag "Duurzamere keuze", inside a button** (Product detail (Tafellamp jute))
- **Product description (section "Productomschrijving"): product tag "Duurzamere keuze"** (Product detail (Tafellamp jute))

**How to fix:** Fix any of the following:
- "Superdeal" and "Weekactie" tags: Element has insufficient color contrast of 2.48 (foreground color: #ffffff, background color: #ff8200, font size: 10.5pt (14px), font weight: bold). Expected contrast ratio of 4.5:1
- "Duurzamere keuze" tags: Element has insufficient color contrast of 2.63 (foreground color: #ffffff, background color: #00b852, font size: 10.5pt (14px), font weight: bold). Expected contrast ratio of 4.5:1

## Price

Located in: `[data-testid="product-card-price"]`

### Elements must meet minimum color contrast ratio thresholds

**Serious - WCAG 1.4.3 Contrast (Minimum) (level AA)**

Source: axe DevTools ([`color-contrast`](https://dequeuniversity.com/rules/axe/4.13/color-contrast))\
Pages: Home, Category (Wonen), Moment (Herfst), Product detail (Tafellamp jute, Topper traagschuim), Cart (empty)

Ensure the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds

**Elements in the product card** (whole and fractional part of each price):

- **LSC Smart Connect buiten wandlamp - kubus: price € 18,95** (Home, Moment (Herfst), Product detail (Tafellamp jute))
- **Hanglamp - jute: price € 29,95** (Home, Category (Wonen))
- **Ronde hanglamp - smoke mat zwart: price € 49,95** (Home, Category (Wonen), Product detail (Tafellamp jute, Topper traagschuim))
- **Tafellamp - jute: price € 29,95** (Home, Category (Wonen), Product detail (Topper traagschuim), Cart (empty))
- **Dino knuffel XXL: price € 24,95** (Home, Product detail (Tafellamp jute))
- **Opblaasbaar skelet Halloween: price € 1,99, fractional part "99" only** (Home)
- **LSC Smart Connect stekker: price € 6,77, fractional part "77" only** (Home)
- **Etro vloerkleed - beige: price € 59,95** (Category (Wonen))

**Elements in the product details:**

- **Tafellamp - jute: price € 29,95, whole part "29" and fractional part "95"** (Product detail (Tafellamp jute))

**How to fix:** Fix any of the following:
- Product card, whole part: Element has insufficient color contrast of 2.48 (foreground color: #ff8200, background color: #ffffff, font size: 36.0pt (48px), font weight: bold). Expected contrast ratio of 3:1
- Product card, fractional part: Element has insufficient color contrast of 2.48 (foreground color: #ff8200, background color: #ffffff, font size: 21.0pt (28px), font weight: bold). Expected contrast ratio of 3:1
- Product details, whole part: Element has insufficient color contrast of 2.48 (foreground color: #ff8200, background color: #ffffff, font size: 72.0pt (96px), font weight: bold). Expected contrast ratio of 3:1
- Product details, fractional part: Element has insufficient color contrast of 2.48 (foreground color: #ff8200, background color: #ffffff, font size: 22.5pt (30px), font weight: bold). Expected contrast ratio of 3:1

### Information is not presented properly

**Moderate - WCAG 1.3.1 Info and Relationships (level A)**

Source: manual review

The price component implementation relies on an `aria-label` placed on the containing `<span>` to present the total amount. This has a few issues depending on the screenreader being used. A `aria-label` placed on a `generic` element (like `<span>`) is not allowed according to ARIA. So depending on how a screenreader interprets this there are a few issues:

1. If a screenreader uses the `aria-label` anyway, the total price is announced. But the price per item is not, since the `aria-label` value is a value for the whole container
2. If a screenreader ignores the `aria-label`, all content is being read like so: "€ 19,95/st 39 90". In this case it is not clear that _39_ and _90_ refer to the total price.

**How to fix:** The goal is to present all the information. A solution could be to use a combination of `aria-hidden` and `.sr-only` like so:

```html
<div>
  <p>
    <span aria-hidden="true">€ 19,95/st</span>
    <span class="sr-only">€ 19,95 per stuk</span>
  </p>
  <p>
    <span class="sr-only">Totaal € 39,90</span>
    <span aria-hidden="true">39<sup>90</sup></span>
  </p>
</div>
```

## Button

Located in: `<span class="truncate px-1">` inside a `rounded-full` `<button>` or `<a>`

### Elements must meet minimum color contrast ratio thresholds

**Serious - WCAG 1.4.3 Contrast (Minimum) (level AA)**

Source: axe DevTools ([`color-contrast`](https://dequeuniversity.com/rules/axe/4.13/color-contrast))\
Pages: Product detail (Tafellamp jute, Topper traagschuim), Cart, Cart (empty), Checkout, Register

Ensure the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds

**Elements:**

- **Add to cart button "Plaats in winkelwagen"**, `[data-testid="shop-pdp-add-to-cart-button"]` (Product detail (Tafellamp jute, Topper traagschuim))
- **Submit button "Maak account aan"**, `[data-testid="submit-button"]` (Register)
- **Checkout link "Bestellen"**, `[data-testid="order-summary-checkout-button"]` (Cart)
- **Submit button "Bestellen en betalen"**, `[data-testid="checkout-submit-btn"]` (Checkout)
- **Link "Verder winkelen"**, `[data-testid="cart-empty-state-cta"]` (Cart (empty))

**How to fix:** Fix any of the following:
- Orange button (Plaats in winkelwagen on Tafellamp jute, Maak account aan): Element has insufficient color contrast of 2.48 (foreground color: #ffffff, background color: #ff8200, font size: 12.0pt (16px), font weight: normal). Expected contrast ratio of 4.5:1
- Cyan button (Plaats in winkelwagen on Topper traagschuim, Bestellen, Bestellen en betalen, Verder winkelen): Element has insufficient color contrast of 2.37 (foreground color: #ffffff, background color: #00b6e7, font size: 12.0pt (16px), font weight: normal). Expected contrast ratio of 4.5:1

## Form field

### Error messages are not linked to their fields

**Critical - WCAG 1.3.1 Info and Relationships (level A)**

Source: manual review

When an error appears under a field, the error and the field are not programmatically connected. The error appears when the user tabs out of the field and into the next one. Thereby skipping over the error. Tabbing back into the field will also not reveal the error.

**How to fix:** use `aria-invalid="true"` and `aria-describedby="error-id"` to link the field to the error like so:

```html
<input
  type="email"
  name="email"
  required
  aria-invalid="true"
  aria-describedby="email-error"
/>
<p id="email-error">Voer een geldig e-mailadres in</p>
```

### Input fields lose their focus indicator when they have an error

**Serious - WCAG 2.4.7 Focus Visible (level AA)**

Source: manual review

When an input field has an error, the border becomes red. But that same border is being used as a focus indicator. Since the error state takes precedence, the input field loses its focus indicator

**How to fix:** Use the `outline` with an offset as the focus indicator instead of the border colour. That way the border keeps its error colour and the outline is visible when it receives focus

### Geboortedatum is not a group

**Moderate - WCAG 1.3.1 Info and Relationships (level A)**

Source: manual review

The `<label>` with 'Geboortedag' in it has a `for="dateOfBirth"` attribute, but the id `dateOfBirth` is not found on the page. Thus it is not linked to an input field. The hint about the age restriction is also not connected, and thus not announced. When tabbing through the form, this text is missed.

**How to fix:** Use a `<fieldset>`/`<legend>Geboortedatum</legend>` to group and link the input fields. Use `aria-describedby` to connect the age restriction field

### Date fields jump to the next field on their own

**Moderate - WCAG 3.2.2 On Input (level A)**

Source: manual review

After two digits, the focus moves to the next field without explaining this behaviour. A user that is used to tabbing to the next field fills in the day field, the focus gets moved to the month field and tabs directly to the year field. This leads to confusion

**How to fix:** While describing this behaviour would fix the violation, removing the auto-advance feature will give the user more control over their flow

### Date fields use `type="number"`

**Moderate - Recommendation**

Source: manual review

With the `type="number"`, the browser provides tools to deal with numbers. Like using the up and down arrows to increase / decrease the value. In some browsers the mouse wheel or trackpad scroll will increase / decrease the value as well. All without it being announced. 

GOV.UK, did some research on this topic: [Why the GOV.UK Design System team changed the input type for numbers](https://technology.blog.gov.uk/2020/02/24/why-the-gov-uk-design-system-team-changed-the-input-type-for-numbers/)

**How to fix:** Using `<input type="text" inputmode="numeric" autocomplete="bday-year">`
- `type="text"` will make `maxlength` work and remove the arrow / wheel behaviour
- `inputmode="numeric"` keeps the number keypad on mobile

### Password toggle does not expose its state

**Moderate - Recommendation**

Source: manual review

The label of the showing/hiding of the password never changes when the feature is used. There is no `aria-pressed` indicating the current state. A screenreader user can not tell if the password is visible or not.

**How to fix:** Use `aria-pressed="true"` / `aria-pressed="false"` to indicate the visibility of the password, and update the button text to reflect that

## Pagination

Located in: `[data-testid="grid-pagination-items"]`

### The links don't have descriptive labels

**Serious - WCAG 2.4.4 Link Purpose (In Context) (level A)**

Source: manual review

The labels of links to pages are bare numbers. They don't describe where the link takes the user. Especially since the container does not have a label like 'Paginering', the user can not deduce the purpose of the link out of context. If the component were to get a descriptive label like 'Paginering', the severity would drop, but a proper label is advised.

**How to fix:** Add `aria-label="Pagina 2"` or `aria-label="Volgende pagina"` instead of the current `aria-label="2"` and `aria-label="Volgende"`.
On mobile consider to expand the label to `aria-label="Pagina 2 van 9"` since there is no indication of the total amount of pages.

### The component is not reachable via a landmark

**Moderate - Recommendation**

Source: manual review

The pagination feature is a navigation element but is not marked up as such. This not only makes it hard for screenreader users to find (they have to tab through the whole page to find it), but because it also has no descriptive label, its contents are confusing (bare numbers).

This is not a violation of a WCAG SC per se, but it helps users navigate greatly

**How to fix:** Swap the containing `<div>` with `<nav aria-label="Paginering">`. Don't put 'navigatie' in the name, the `<nav>` element gets announced as such

### The links don't have a current page indicator

**Minor - Recommendation**

Source: manual review

The current page item in the list is not marked up as such. By marking it like the current page it gives the user context about their whereabouts. Sighted users get this information through a darker outline, background and bold text.

**How to fix:** add `aria-current="true"` on the `<a>` element representing the current page

## CMS markdown

Located in: `[data-testid="cms-markdown"]`

### Subsections are not headings

**Serious - WCAG 1.3.1 Info and Relationships (level A)**

Source: manual review\
Pages: Privacy statement

The sub sections, like "1.1.1 Aankopen en bestellingen in onze filialen" and "1.1.2 Camerabewaking" for example, but also "Grote orders" and "BTW-bonnen" are marked up as paragraphs (`<p>`). This prevents screenreader users from jumping to them via heading navigation. But since they are visually not different from the surrounding text, sighted users can scan for them

**How to fix:** Use `<h4>` for the x.x.x titles and `<h5>` for the unnumbered ones under them and style them as headings. Use an `<h2>` for "Wat deze privacyverklaring omvat"

### Links must be distinguishable without relying on color

**Serious - WCAG 1.4.1 Use of Color (level A)**

Source: manual review, axe DevTools ([`link-in-text-block`](https://dequeuniversity.com/rules/axe/4.13/link-in-text-block))\
Pages: Privacy statement

Multiple links (the 7 browser links and two email addresses) rely only on colour to identify themselves as links.

axe DevTools reports two more links in `[data-testid="markdown-link"]` inside `[data-testid="markdown-paragraph"]`: "Ensure links are distinguished from surrounding text in a way that does not rely on color".

**Elements:**

- **Link "https://business.safety.google/privacy/" under heading "1.6. Online adverteren en marketingtechnologieën"**
- **Link "Onze leden | Europees Comité voor gegevensbescherming" under heading "6. Je rechten m.b.t. gegevensbescherming"**

axe DevTools: Fix any of the following:
- The link has insufficient color contrast of 1.21:1 with the surrounding text. (Minimum contrast is 3:1, link text: #001489, surrounding text: #1a1a1a)
- The link has no styling (such as underline) to distinguish it from the surrounding text

**How to fix:** Underline all links in content text.

### Lists are paragraphs starting with "- "

**Moderate - WCAG 1.3.1 Info and Relationships (level A)**

Source: manual review\
Pages: Privacy statement

Content that should be a list is marked up as paragraphs (`<p>`).

**How to fix:** Markup lists with `<ul>`/`<li>` elements

### Heading levels should only increase by one

**Moderate - Best Practice**

Source: axe DevTools ([`heading-order`](https://dequeuniversity.com/rules/axe/4.13/heading-order))\
Pages: Privacy statement

Located in: `[data-testid="markdown-title"]`

Ensure the order of headings is semantically correct

**Elements:**

- **Heading "Action respecteert jouw privacy."**

**How to fix:** Fix any of the following: Heading order invalid

# Page-specific components

## Home – hero image

### Campaign image without alternative text

**Minor - WCAG 1.1.1 Non-text Content (level A)**

Source: manual review\
Pages: Home

The "Super Deals / online only" hero image is hidden from screenreader users and marked up as decorative. Because there is text inside the image, screenreader users miss that content.

**How to fix:** Add an `alt` attribute with the text content and move it out of the `aria-hidden` container. The SVG background image can stay hidden

### Heading level 1 (Tijdelijke deals) is not visible and might be confusing

**Minor - Recommendation**

Source: manual review\
Pages: Home

In the Hero image block, there is a heading level 1 with the content: "Tijdelijke deals". Screenreader users find this heading where sighted users do not. Instead they are presented with the Super Deals graphic.

This does not violate WCAG 2.4.6 Headings and Labels (AA), because the following content lists temporary deals. However, the `<h1>` is often interpreted as the title of the document, and as such I interpret it as every item on this page is temporary. But looking at the page gives me a different impression. Because there are items marked as "Superdeal", I would expect that the _deals_ that are referenced in the page header (_Elke maandag om 12.00 nieuwe deals_) and the countdown block in the middle (_De deals op de webshop zijn slechts tijdelijk beschikbaar_) are some of the items available, but not all of them. The way the `<h1>` is positioned seems to indicate otherwise.

## Home – countdown banner (New Deals block)

Located in: `[data-testid="countdown-banner"]`

### The timer does not get announced properly

**Serious - WCAG 1.3.1 Info and Relationships (level A)**

Source: manual review\
Pages: Home

There is an animation that transitions when a digit changes. This is done by adding a lot of digits in the DOM and hiding them outside of their container. However, they are still present in the DOM and detectable by screenreaders. A screenreader tries to read the counter section, finds all digits and reads: 9.876.543.210.

**How to fix:** The proper data is already available in the `<time>` element wrapping everything in the `datetime` attribute.
- Add a `<span class="sr-only">` element with a written representation of the time as a child element. Make it fill the whole counter area. 
- Add `inert` to each other child element (`<div>`) of the `<time>` element

### The New Deals block DOM order does not match its visual placement

**Serious - WCAG 2.4.3 Focus Order (level A)**

Source: manual review\
Pages: Home

The New Deals block in the DOM is different from its visual location. That means that when a keyboard user tabs through the page, the `Bekijk alle nieuwe deals` button is the first element they land on instead of the first item in the list. Because this block is far below the viewport, the whole viewport changes when tabbing into it. Not only are first items skipped (12 on desktop, 6 on mobile), any visual reference is lost.
When the user tabs again (out of the button onto the next interactive element), they land on the first item in the list. Because of that the whole viewport changes again.

**How to fix:** Put the banner in the DOM where it sits visually on the page. 

### Elements must meet minimum color contrast ratio thresholds

**Serious - WCAG 1.4.3 Contrast (Minimum) (level AA)**

Source: axe DevTools ([`color-contrast`](https://dequeuniversity.com/rules/axe/4.13/color-contrast))\
Pages: Home

Ensure the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds

**Elements:**

- **Heading "Elke maandag 12.00 uur nieuwe deals"**
- **Countdown tile "dagen"**
- **Countdown tile "uren"**
- **Countdown tile "minuten"**

**How to fix:** Fix any of the following:
- Heading: Element has insufficient color contrast of 2.37 (foreground color: #ffffff, background color: #00b6e7, font size: 24.0pt (32px), font weight: bold). Expected contrast ratio of 3:1
- Countdown tiles: Element has insufficient color contrast of 2.79 (foreground color: #ffffff, background color: #00a6de, font size: 9.0pt (12px), font weight: normal). Expected contrast ratio of 4.5:1

## Product grid – filters

Located in: `[data-testid="grid-filters-desktop"]`

### Results not announced after filtering

**Serious - WCAG 4.1.3 Status Message (level AA)**

Source: manual review\
Pages: Category (Wonen)

When a user uses the filter feature, the change in items on the page is not announced. On the top there is a total amount to results text, but that is not read out when the filters change. Because there is also not a page refresh, screenreader users or users that zoom the page are not aware that their actions had an effect

**How to fix:** announce the change in results in a `role="status"` region. See the [Using `role=status` to present status messages](https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA22) Technique for an example. This should be done for the total amount of items but also the amount of active filters.

### Focus is lost after removing active filter, clicking 'Bekijk meer' and closing the mobile filter dialog

**Serious - WCAG 2.4.3 Focus Order (level A)**

Source: manual review\
Pages: Category (Wonen)

When an active filter is removed, the focus is lost. By default that focus ends up on the `<body>` which means that the next `tab` press will be at the bottom of the document.

**How to fix:** When the filter list is being rerendered while the focus was inside of the filter list, the focus need to be preserved. This does happen when one of the filter items is being toggled. And when the filter dialog is closed, focus should move back to the open button

### Elements must meet minimum color contrast ratio thresholds

**Serious - WCAG 1.4.3 Contrast (Minimum) (level AA)**

Source: axe DevTools ([`color-contrast`](https://dequeuniversity.com/rules/axe/4.13/color-contrast))\
Pages: Category (Wonen), Search

Located in: `[data-testid="grid-filter-item-label"]`

Ensure the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds

**Elements:** the count after each filter option, for example **Filter "Prijs", option "Tot € 20": count "(17)"**.

- Category (Wonen), 26 options:
    - **Prijs:** Tot € 20, € 20 - 30, € 30 - 40, € 40 - 50, € 50 en meer
    - **Merk:** Absolu Chic, Beldray, Briloner, Carmen, Emerio, FERM, Hyundai, La Isla Living, Leitz, LSC Smart Connect
    - **Assortiment:** Bijna uitverkocht
    - **Kleur:** Grijs, Zwart, Zilver, Wit, Bruin, Rood, Beige, Blauw, Brons & koper, Creme
- Search, 15 options:
    - **Prijs:** € 20 - 30, € 40 - 50, € 50 en meer
    - **Merk:** Airtrack, Combekk, GreenChef, Home Essentials, Zwilling
    - **Assortiment:** Bijna uitverkocht
    - **Kleur:** Zwart, Blauw, Bruin, Rood, Zilver, Geel

**How to fix:** Fix any of the following: Element has insufficient color contrast of 1.87 (foreground color: #b6bec8, background color: #ffffff, font size: 10.5pt (14px), font weight: normal). Expected contrast ratio of 4.5:1

### Active filter pill name does not state its purpose

**Moderate - WCAG 1.1.1 Non-text Content (level A)**

Source: manual review\
Pages: Category (Wonen)

The filter pill is a button that, when pressed, removes the filter. This purpose is not stated in the button label. A sighted user sees the `x` and takes its meaning from that cue. But a screenreader user only hears the label of the filter.

**How to fix:** Either add an `aria-label="Verwijder filter: Tot € 20"` to the `<button>` element. Or include a hidden text inside the button. It is advised that the purpose is stated before the filter name, so `Verwijder filter: Tot € 20` instead of `Tot € 20 Verwijderen filter`. In the last case the user needs to hear the whole label before the purpose is clear.

### Heading levels should only increase by one

**Moderate - Best Practice**

Source: manual review, axe DevTools ([`heading-order`](https://dequeuniversity.com/rules/axe/4.13/heading-order))\
Pages: Category (Wonen), Search

The heading structure can be improved to help navigating the page better. The `Filter` is a heading level 3, the same as the headings for the filter sections like `Prijs` and `Merk`. Visually, and conceptually, the `Prijs` and `Merk` headings are nested below the `Filter`, but the markup does not describe it like that. Also, the product list does not have a heading. This is not an issue for sighted users, but users navigating by headings might miss the whole list since there _are_ headings for `Wonen`, `Gordijnen`, `Vloerkleden`, `Leuke meubels...` and more.

axe DevTools reports the `Filter` heading in `[data-testid="grid-filters-group-title"]` inside `[data-testid="grid-filters-desktop"]`: "Ensure the order of headings is semantically correct".

**Elements:**

- **Heading "Filter"** (Category (Wonen), Search)
    - How to fix: Fix any of the following: Heading order invalid

**How to fix:**
- Make the `Filter` heading a heading level 2
- Add a `Beschikbare producten` heading level 2 above the product list 

### Labels can be improved

**Minor - Recommendation**

Source: manual review\
Pages: Category (Wonen)

In the filter item, the number of matching items for that item is provided in `()`. For example: `Tot € 20 (17)`. The `(17)` part is dimmed. A sighted user sees this difference between the bold and dimmed text, a screenreader user only hears `Tot € 20 17`. The lack of `()` add to the confusion. The same is true for the amount of active filters next to the `Filter` heading, the `Wis alle` button and the `Bekijk meer` toggle. 

**How to fix:** Include a hidden text providing more context to the items:

For the total products:

```html
<span>Tot € 20 (17 <span class="sr-only">Producten</span>)</span> 
```

For the active filters:

```html
<h3>Filter <span>1 <span class="sr-only">actief</span></span></h3>
```

For the _Wis alle_ button:

```html
<button>Wis alle <span class="sr-only">filters</span></button>
```

For the _Bekijk meer_ button:

```html
<button>Bekijk meer <span class="sr-only">Merk filters</span></button>
```

## Product details

Located in: `[data-testid="product-details"]`

### Heading levels should only increase by one

**Moderate - Best Practice**

Source: manual review, axe DevTools ([`heading-order`](https://dequeuniversity.com/rules/axe/4.13/heading-order))\
Pages: Product detail (Tafellamp jute, Topper traagschuim, Contactgrill XL)

The headings `Beschrijving`, `Specificaties` and `Verzenden & Retourneren` are marked up as a heading level 3. But there is no heading level 2 between them and the page title.

axe DevTools reports the `Beschrijving` heading in `[data-testid="accordion-container"]` inside `[data-testid="shop-product-information"]`: "Ensure the order of headings is semantically correct".

**Elements:**

- **Heading "Beschrijving"** (Product detail (Tafellamp jute, Topper traagschuim, Contactgrill XL))
    - How to fix: Fix any of the following: Heading order invalid

**How to fix:** The containing section has `aria-label="Productomschrijving"`. Instead of using aria label here, add a `<h2>` and use that to label the section like so:

```html
<section aria-labelledby="productdescription-label">
  <h2 id="productdescription-label" class="sr-only">Productomschrijving</h2>
  ...
</section>
```

This can also be applied to the `Images` section, making it easier to find via headings

## Product details – variation chooser

Located in: `[data-testid="color-variant-chip"]` and `[data-testid="size-variant-chip"]`

### Current variation is only visually indicated

**Moderate - WCAG 4.1.2 Name, Role, Value (level A)**

Source: manual review\
Pages: Product detail (Vloerkleed Tenerife taupe)

The product variations are links to different pages. The currently selected variant is given an outline. But programmatically it is not identified as such. As a further complication, the current variation is a button, instead of a link.

**How to fix:** Make the current variation a link as well and add `aria-current="page"` to it.

### Variants should be marked up as a list

**Minor - Recommendation**

Source: manual review\
Pages: Product detail (Vloerkleed Tenerife taupe)

The list of variants is not marked up as being a list. Because of this, a screenreader user does not get additional information like how many variants there are available, or have the ability to skip over the list entirely

**How to fix:** Instead of the current `div`s, use `<ul>`/`<li>` elements.

## Product details – Duurzamere keuze info block

Located in: `[data-testid="shop-sustainability-block"]`

### "Lees meer" cannot be operated with the keyboard

**Critical - WCAG 2.1.1 Keyboard (level A)**

Source: manual review\
Pages: Product detail (MGO bijzettafel)

The "Lees meer" control expands the sustainability block. It is an `<a>` without an `href`, so it cannot receive keyboard focus. While the block is collapsed, the links inside it have `tabindex="-1"`. Only after expanding do they get `tabindex="0"`. Keyboard users, thus, can not expand the block or reach its links.

**How to fix:** Replace the `<a>` with a `<button>` element. Not only is this the semantically correct element, it always receives keyboard focus.

## Product details – images carousel

Located in: `section[aria-label="Images"]`

### Images / thumbnails in the carousel do not have a proper alt attribute.

**Serious - WCAG 1.1.1 Non-text Content (level A)**

Source: manual review

The small images below the main image all have an `alt="Navigate to image"` attribute.
The `alt` attribute should be used to describe the image.

**How to fix:** Give a description of the image in the alt text

### Thumbnail buttons all have identical names

**Moderate - Recommendation**

Source: manual review

Each button has the same name, making it hard to tell the individual buttons apart

**How to fix:** Use a more descriptive name like so: `aria-label="Toon afbeelding 2 van 6"` on the button element

### The selected thumbnail is only indicated visually

**Moderate - WCAG 4.1.2 Name, Role, Value (level A)**

Source: manual review

The current selected thumbnail gets only an outline. Screenreader users do not know which item is active. Making it harder to navigate.

**How to fix:** Add `aria-current="true"` to the button element

### Container label does not match page language

**Minor - WCAG 3.1.2 Language of Parts (level AA)**

Source: manual review

The region has an `aria-label="Images"` attribute without an `lang="en"` attribute to indicate that its label should be pronounced differently. See the heading structure for the _Productomschrijving_ for a method of improving the label further.

**How to fix:** Include a `lang="en"` to the section element

**How to improve:** Rename the `aria-label` value to: `Afbeeldingen`. Or improve the label further by using a `<h2>` as its label and making the images discoverable via heading navigation as well like so:

```html
<section aria-labelledby="images-label">
  <h2 id="images-label" class="sr-only">Afbeeldingen</h2>
  ...
</section>
```

### Thumbnails should be marked up as a list

**Minor - Recommendation**

Source: manual review

The row of thumbnails is not identified as being a list. Because of this, a screenreader user does not get additional information like how many items there are in the list, or has the ability to skip over the list entirely

**How to fix:** Instead of the current `div`s, use `<ul>`/`<li>` elements.

## Cart – winkelmand item

Located in: `[data-testid="cart-line-item"]`

### Max amount per order reached is not announced

**Moderate - WCAG 4.1.3 Status Messages (level AA)**

Source: manual review

When an item reaches its maximum amount, this is not announced. The result is that the add buttons stops working without notification

**How to fix:** use the same mechanism that is used in a product card on an overview page. There it is being announced.

### Link should be a heading

**Moderate - Recommendation**

Source: manual review

The link to a product should be marked up as a heading level 2. That way it is more clear to the user that the following interactive elements belong to the product.

**How to fix:** Markup the link like so:

```html
<h2>
  <a href="...">Topper traagschuim matras 90 x 200</a>
</h2>
<p>90 x 200 cm</p>
```

### Announcement of changing amount of products can be improved

**Moderate - Recommendation**

Source: manual review

When there are products added or removed only the new number is announced without much context.

**How to fix:** Add one shared status region in which content gets updated on every change

```html
<span role="status">Topper traagschuim matras: aantal 2. Totaal € 270,49</span>
```

### Link contains subtext

**Minor - Recommendation**

Source: manual review

The link to a product contains the sub text of the product. This leads to unnecessary long links with potential duplicate content.

**How to fix:** Only put the title of the product in an `<a>` element.

### Disabled add button should be described

**Minor - Recommendation**

Source: manual review

Some products have a limit on how much of them can be ordered. When that limit is reached, the add button gets disabled. There is text describing why it is disabled, but that text is not connected to the button, making it hard to understand why the button is disabled.

**How to fix:** Consider this markup:

```html
<button
  aria-label="één product toevoegen"
  aria-describedby="xyz"
  aria-disabled="true"
>
  <svg>
</button>
...
<p id="xyz">Je hebt het max. van 2 items per bestelling bereikt</p>
```

The `aria-describedby` references the reason, and using `aria-disabled` over `disabled` makes sure that the button keeps being focusable. Even with `tabindex="0"`, the button will not be focusable.

## Checkout

Located in: `[data-testid="checkout-layout"]`

### No announcement of payment provider error or address error

**Blocker - WCAG 3.3.1 Error Identification (level A)**

Source: manual review\
Pages: Checkout

When there is no payment provider or delivery address selected and the form is submitted, there is no input field to focus. So the focus is lost. And although an error message is shown, that error is not announced.

**How to fix:** This issue is quite similar to the "No announcement after submit" issue, as is its fix. Announce that the error has occurred 

### No announcement after submit

**Critical - WCAG 3.3.1 Error Identification (level A)**

Source: manual review\
Pages: Checkout

After a submit of the payment button, while there are errors on the page, the payment submit fails. The focus is moved to the first field with an error message. But the fact that the submit failed is not announced. Together with the "Error messages are not linked to their fields" issue in the Form field component, the user does not know that an error has occurred, or how it can be fixed.

**How to fix:** Although not required according to WCAG, a summary of what went wrong with links to the fields with an error would be the best solution. A minimal fix is to announce that the submit was not successful. 

### Back to cart button does not have a name on mobile

**Serious - WCAG 2.4.4 Link Purpose (In Context) (level A)**

Source: manual review\
Pages: Checkout

On a small screen the text _Ga naar winkelmand_ is hidden via `display:none`. This removes it from the accessibility tree and thus, the link has no text.

**How to fix:** use `aria-label="Ga naar winkelmand"` on the `<a>` element

### Information about the privacy statement and terms and conditions comes after the submit button.

**Moderate - Recommendation**

Source: manual review\
Pages: Checkout

Someone reading the page from top to bottom reaches the order button before the links to the terms and conditions, privacy statement and newsletter signup. Making it easy to miss them.

**How to fix:** Move them above the submit button

### Main landmark should not be contained in another landmark

**Moderate - Best Practice**

Source: axe DevTools ([`landmark-main-is-top-level`](https://dequeuniversity.com/rules/axe/4.13/landmark-main-is-top-level))\
Pages: Checkout

Located in: `[data-testid="checkout-layout"]`

Ensure the main landmark is at top level

**Elements:**

- **Checkout main**

**How to fix:** Fix any of the following: The main landmark is contained in another landmark.

### Document should not have more than one main landmark

**Moderate - Best Practice**

Source: axe DevTools ([`landmark-no-duplicate-main`](https://dequeuniversity.com/rules/axe/4.13/landmark-no-duplicate-main))\
Pages: Checkout

Ensure the document has at most one main landmark

**Elements:**

- **Page main `#layout-page-content`**

**How to fix:** Fix any of the following: Document has more than one main landmark

### Landmarks should have a unique role or role/label/title (i.e. accessible name) combination

**Moderate - Best Practice**

Source: axe DevTools ([`landmark-unique`](https://dequeuniversity.com/rules/axe/4.13/landmark-unique))\
Pages: Checkout

Ensure landmarks are unique

**Elements:**

- **Page main `#layout-page-content`**

**How to fix:** Fix any of the following: The landmark must have a unique aria-label, aria-labelledby, or title to make landmarks distinguishable

## Checkout – delivery address

Located in: `[data-testid="delivery-address"]`

### autocomplete attribute must be used correctly

**Serious - WCAG 1.3.5 Identify Input Purpose (level AA)**

Source: axe DevTools ([`autocomplete-valid`](https://dequeuniversity.com/rules/axe/4.13/autocomplete-valid))\
Pages: Checkout

Ensure the autocomplete attribute is correct and suitable for the form field

**Elements:**

- **Input "Adres" (`street-input`)**
- **Input "Postcode" (`postalcode-input`)**
- **Input "Plaats" (`city-input`)**

**How to fix:** Fix all of the following: the autocomplete attribute is incorrectly formatted

> **Reviewer note:** `do-not-autofill` is not a valid `autocomplete` value. Use the input purpose tokens instead: `address-line1` for "Adres" (single-line street address; `street-address` is meant for a multi-line field), `postal-code` for "Postcode" and `address-level2` for "Plaats". See [WCAG 2.1, Input Purposes for User Interface Components](https://www.w3.org/TR/WCAG21/#input-purposes).
>
> `do-not-autofill` may have been chosen to keep browser autofill from interfering with the address lookup on "Adres" (`role="combobox"`). However, an invalid value is not a documented alternative: the HTML spec treats it as having no autofill purpose, leaving autofill to the browser's interpretation ([HTML, autofill processing model](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#autofill-processing-model)).

### Address lookup fills the "Postcode" and "Plaats" with a value without announcing it

**Minor - WCAG 4.1.3 Status Message (level AA)**

Source: manual review\
Pages: Checkout

The fields "Postcode" and "Plaats" are filled in with information based on the provided address, this state change is not announced.

**How to fix:** Add a (potentially) hidden `role="status"` region that announces that these fields are filled in based on the Adres field.

### Billing fields "Adres", "Postcode" and "Plaats" appear twice with the same name

**Minor - Recommendation**

Source: manual review\
Pages: Checkout

In a list of input fields, the same names appear. That means that they can not be told apart.

**How to fix:** Wrap each address in a `<fieldset>`/`<legend>`

## Checkout – payment method

Located in: `[data-testid="checkout-payment-section"]`

### Payment provider section does not meet expected radio group keyboard behaviour

**Moderate - Recommendation**

Source: manual review\
Pages: Checkout

Because the payment options feature circles and checkmarks, the pattern is recognised (and announced) as a radio button group. However, each receive a tabstop and arrow keys do nothing. This can confuse keyboard/screenreader users because the interactions differ from normal / expected operation.

**How to fix**: Instead of buttons, use actual `<input type="radio" />` elements nested in `<label>` elements.

### Payment provider heading should be improved

**Minor - Recommendation**

Source: manual review\
Pages: Checkout

Above the list of payment providers, there is a heading "Betalen". Because the actual payment button sits under the "Je Winkelwagen" heading, the heading "Betalen" is confusing because a user can not perform the payment action there.

**How to fix:** Use the word "Betaalmethode" or a similar phrase instead of "Betalen"

## Login form

Located in: `[data-testid="login-form"]`

### Loading state is not announced

**Moderate - WCAG 4.1.3 Status message (level AA)**

Source: manual review\
Pages: Login

When the login button has been clicked, the button changes in a spinner. A sighted user gets feedback that something is happening, but a screenreader user does not. The change of the state is not announced

**How to fix:** When the user clicks on the button announce the state change in a `role="status"` region, or change the name of the button with a hidden text

### Link has confusing text out of context

**Moderate - WCAG 2.4.4 Link Purpose (In Context) (level A)**

Source: manual review\
Pages: Login

The link "Klik dan hier" in the info panel explaining to view the order information without an account is confusing without context. In a list of links this link does not explain what it does.

**How to fix:** Use a more descriptive text like "Bekijk hier je orderinformatie zonder account". At a minimum place the link inside the paragraph with the explaining text.

## Forgot password form

Located in: `[data-testid="forgot-password-form"]`

### No announcement after submitting the form

**Serious - WCAG 4.1.3 Status Message (level AA)**

Source: manual review\
Pages: Forgot password

When the form is submitted, the page content changes, showing a message to check the email. But nothing is announced or focus is moved to the new content. A screenreader user is not aware of this change

**How to fix:** move the focus to the new `<h1>` element.

## Algemene voorwaarden – table of contents

Located in: `[data-testid="cms-table-of-contents"]`

### Table of contents hard to operate for keyboard users

**Moderate - WCAG 2.4.3 Focus Order (level A)**

Source: manual review\
Pages: Algemene voorwaarden

The table of contents is made up of `<button>` elements. Pressing "Artikel 6" scrolls the page and updates the URL hash. But the focus stays on the button. When the user presses `tab` again, the page jumps back up to the table of contents. Keyboard users can not use the table of contents to navigate the page, screenreader users get no feedback that anything happened.

**How to fix:** Use `<a href="#artikel-6--herroepingsrecht">` instead of `<button>` elements. The IDs already exist, a native browser handling moves the focus to the target element. Put the links in `<nav aria-label="Artikelen"><ul>...</ul></nav>`

### Table of contents titles are cut off visually

**Moderate - Recommendation**

Source: manual review\
Pages: Algemene voorwaarden

The labels truncate the text with `...` and there is no tooltip. Sighted users, and especially users using magnification, can not read where the buttons lead to.

**How to fix:** Let the text wrap.

### English accessible name in Table of Contents item

**Minor - WCAG 3.1.2 Language of Parts (level AA)**

Source: manual review\
Pages: Algemene voorwaarden

Each button in the table of contents has an `aria-label="Go to..."`. "Go to" is followed by the Dutch name of the article. For a screenreader user, these words are pronounced in a Dutch voice.

**How to fix:** When the above issue is done, the link is announced as being a link. The words "Go to" are then obsolete. The whole `aria-label` can be removed.

## Cookie statement – cookie declaration

Located in: `[data-testid="cookie-declaration"]`

### Cookie category titles are not headings

**Serious - WCAG 1.3.1 Info and Relationships (level A)**

Source: manual review\
Pages: Cookie statement

"Strikt noodzakelijke cookies (21)", "Voorkeurscookies (2)", "Analytische cookies (49)", "Marketing- en advertentiecookies (78)" and "Niet geclassificeerd (2)" are `<p>` elements. They are styled as headings (different colour, different font-weight). They function as the title of the tables. These tables have no `<caption>` describing the table. A screenreader user can not jump to a category with heading navigation and each table sounds the same: "table, 5 columns".
Because the tables cover most of the page makes the impact high.

**How to fix:** Use `<h3>` for the titles and use `aria-labelledby` on the tables to point to the heading.

### Links must be distinguishable without relying on color

**Serious - WCAG 1.4.1 Use of Color (level A)**

Source: manual review, axe DevTools ([`link-in-text-block`](https://dequeuniversity.com/rules/axe/4.13/link-in-text-block))\
Pages: Cookie statement

Multiple links (the 7 browser links in section 5 and email link in section 6) rely only on colour to identify themselves as links.

axe DevTools reports one more link: "Ensure links are distinguished from surrounding text in a way that does not rely on color".

**Elements:**

- **Link "Cookiebot" in "Cookieverklaring laatst bijgewerkt op 19/10/2026 door Cookiebot:"**

axe DevTools: Fix any of the following:
- The link has insufficient color contrast of 1.99:1 with the surrounding text. (Minimum contrast is 3:1, link text: #001489, surrounding text: #505862)
- The link has no styling (such as underline) to distinguish it from the surrounding text

**How to fix:** Underline all links in content text.

### List of suppliers is not marked up as a list

**Moderate - WCAG 1.3.1 Info and Relationships (level A)**

Source: manual review\
Pages: Cookie statement

The 22 domains under "Leveranciers gebruikt op onze website" are listed as a paragraph with `<br>` between them.

**How to fix:** Use `<ul>`/`<li>` to make a proper list

### Heading levels should only increase by one

**Moderate - Best Practice**

Source: axe DevTools ([`heading-order`](https://dequeuniversity.com/rules/axe/4.13/heading-order))\
Pages: Cookie statement

Located in: `.CookieDeclaration-module__eQWa__contentStackContent`

Ensure the order of headings is semantically correct

**Elements:**

- **Heading "Data Protection Officer Action"**

**How to fix:** Fix any of the following: Heading order invalid

## 404 page

> **Reviewer note:** The 404 page uses a different template than the rest of the shop (other header, footer and class names, no `data-testid` attributes). Elements are located by `id` and section heading instead.

### Elements must meet minimum color contrast ratio thresholds

**Serious - WCAG 1.4.3 Contrast (Minimum) (level AA)**

Source: axe DevTools ([`color-contrast`](https://dequeuniversity.com/rules/axe/4.13/color-contrast))\
Pages: 404

Located in: section "Altijd als eerste op de hoogte"

Ensure the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds

**Elements:**

- **Newsletter link "Inschrijven voor nieuwsbrief"**

**How to fix:** Fix any of the following: Element has insufficient color contrast of 2.48 (foreground color: #ffffff, background color: #ff8200, font size: 12.0pt (16px), font weight: normal). Expected contrast ratio of 4.5:1

### Page should contain a level-one heading

**Moderate - Best Practice**

Source: axe DevTools ([`page-has-heading-one`](https://dequeuniversity.com/rules/axe/4.13/page-has-heading-one))\
Pages: 404

Located in: `html`

Ensure that the page, or at least one of its frames contains a level-one heading

**Elements:**

- **Document**

**How to fix:** Fix all of the following: Page must have a level-one heading

> **Reviewer note:** The page title "Oeps! We konden niet vinden wat je zocht..." is marked up as an `<h4>`. All other headings on the page are `<h4>` as well. Making the page title the `<h1>` fixes this issue.

