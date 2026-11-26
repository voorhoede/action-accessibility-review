# Winkelwagen (empty) | Action Webshop NL - https://shop-staging.action.com/nl-nl/winkelwagen

- Tested: 2026-11-26 with axe DevTools 4.140.0 (axe-core 4.13.0), standard WCAG 2.1 AA, best practices enabled
- Source: [`shop-staging.action.com-empty-shopping-card-2026-11-26.json`](./shop-staging.action.com-empty-shopping-card-2026-11-26.json)
- Issues: 5 (4 serious, 1 minor)

## Cart – empty state

Located in: `[data-testid="cart-empty-state-cta"]`

### Elements must meet minimum color contrast ratio thresholds

Ensure the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds

- Rule: `color-contrast`
- Impact: serious
- [Success criteria: 1.4.3 Contrast (Minimum) (level AA)](https://www.w3.org/TR/WCAG21/#contrast-minimum)
- [More information](https://dequeuniversity.com/rules/axe/4.13/color-contrast)

#### Elements

1. **Link "Verder winkelen"**
    - Selector: `a[data-testid="cart-empty-state-cta"] > .px-1.truncate`
    - HTML: `<span class="truncate px-1">Verder winkelen</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 2.37 (foreground color: #ffffff, background color: #00b6e7, font size: 12.0pt (16px), font weight: normal). Expected contrast ratio of 4.5:1

## Product card – price

Located in: `[data-testid="product-card"]` inside `[data-testid="seen-by-you-slider-container"]`

### Elements must meet minimum color contrast ratio thresholds

Ensure the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds

- Rule: `color-contrast`
- Impact: serious
- [Success criteria: 1.4.3 Contrast (Minimum) (level AA)](https://www.w3.org/TR/WCAG21/#contrast-minimum)
- [More information](https://dequeuniversity.com/rules/axe/4.13/color-contrast)

#### Elements

1. **Tafellamp - jute: price € 29,95, whole part "29"**
    - Selector: `.text-orange-500 > .text-\[40px\].leading-\[28px\].md\:text-\[48px\]`
    - HTML: `<span data-testid="product-card-price-whole" class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">29</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 2.48 (foreground color: #ff8200, background color: #ffffff, font size: 36.0pt (48px), font weight: bold). Expected contrast ratio of 3:1
2. **Tafellamp - jute: price € 29,95, fractional part "95"**
    - Selector: `.text-orange-500 > .items-baseline.inline-flex > .text-\[20px\].leading-\[14px\].md\:text-\[28px\]`
    - HTML: `<span data-testid="product-card-price-fractional" class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 2.48 (foreground color: #ff8200, background color: #ffffff, font size: 21.0pt (28px), font weight: bold). Expected contrast ratio of 3:1

## Product card – product tag

Located in: `[data-testid="product-tag"]` inside `[data-testid="product-card"]`

### Elements must meet minimum color contrast ratio thresholds

Ensure the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds

- Rule: `color-contrast`
- Impact: serious
- [Success criteria: 1.4.3 Contrast (Minimum) (level AA)](https://www.w3.org/TR/WCAG21/#contrast-minimum)
- [More information](https://dequeuniversity.com/rules/axe/4.13/color-contrast)

#### Elements

1. **Tafellamp - jute: product tag "Superdeal"**
    - Selector: `#_r_2_`
    - HTML: `<span id="_r_2_" class="block truncate">Superdeal</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 2.48 (foreground color: #ffffff, background color: #ff8200, font size: 10.5pt (14px), font weight: bold). Expected contrast ratio of 4.5:1

## Header – desktop search

Located in: `[data-testid="desktop-search"]` inside `[data-testid="header"]`

### ARIA role should be appropriate for the element

Ensure role attribute has an appropriate value for the element

- Rule: `aria-allowed-role`
- Impact: minor
- Success criteria: Best Practice
- [More information](https://dequeuniversity.com/rules/axe/4.13/aria-allowed-role)

#### Elements

1. **Search form "Waar ben je naar op zoek?"**
    - Selector: `.px-\[25px\]`
    - HTML: `<form role="group" class="bg-neutral-0 flex h-11 rounded-full px-[25px] outline-offset-2 focus-within:outline-2">`
    - How to fix: Fix any of the following: ARIA role group is not allowed for given element

> **Reviewer note:** `<form>` does not allow `role="group"`. Since this is the site search, `role="search"` is allowed on `<form>` and exposes it as a search landmark. Alternatively remove the role. See [ARIA in HTML](https://www.w3.org/TR/html-aria/) (allowed roles for `form`: none, presentation or search).
