# Jute tafellamp voor een landelijk en industrieel interieur | Action Webshop NL - https://shop-staging.action.com/nl-nl/p/8717807708603/tafellamp-jute

- Tested: 2026-11-16 with axe DevTools 4.140.0 (axe-core 4.13.0), standard WCAG 2.1 AA, best practices enabled
- Source: [`shop-staging.action.com-tafellamp-jute-2026-11-16.json`](./shop-staging.action.com-tafellamp-jute-2026-11-16.json)
- Issues: 18 (1 critical, 15 serious, 1 moderate, 1 minor)

## USP list – tooltip

Located in: `[data-testid="shop-generic-usp-tooltip"]` inside `[data-testid="shop-generic-usp-list"]`

### Buttons must have discernible text

Ensure buttons have discernible text

- Rule: `button-name`
- Impact: critical
- [Success criteria: 4.1.2 Name, Role, Value (level A)](https://www.w3.org/TR/WCAG21/#name-role-value)
- [More information](https://dequeuniversity.com/rules/axe/4.13/button-name)

#### Elements

1. **Info button for USP "Wettelijke garantie minimaal 2 jaar"**
    - Selector: `.disabled\:opacity-30`
    - HTML: `<button type="button" class="inline-flex disabled:opacity-30 text-neutral-500">`
    - How to fix: Fix any of the following:
        - Element does not have inner text that is visible to screen readers
        - aria-label attribute does not exist or is empty
        - aria-labelledby attribute does not exist, references elements that do not exist or references elements that are empty
        - Element has no title attribute
        - Element does not have an implicit (wrapped) `<label>`
        - Element does not have an explicit `<label>`
        - Element's default semantics were not overridden with role="none" or role="presentation"

## Product details – product tag

Located in: `[data-testid="product-tag"]` inside `[data-testid="product-details"]`

### Elements must meet minimum color contrast ratio thresholds

Ensure the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds

- Rule: `color-contrast`
- Impact: serious
- [Success criteria: 1.4.3 Contrast (Minimum) (level AA)](https://www.w3.org/TR/WCAG21/#contrast-minimum)
- [More information](https://dequeuniversity.com/rules/axe/4.13/color-contrast)

#### Elements

1. **Image gallery (section "Images"): product tag "Superdeal"**
    - Selector: `#_R_clqnpfiv5vcil4mbsnpfivb_`
    - HTML: `<span id="_R_clqnpfiv5vcil4mbsnpfivb_" class="block truncate">Superdeal</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 2.48 (foreground color: #ffffff, background color: #ff8200, font size: 10.5pt (14px), font weight: bold). Expected contrast ratio of 4.5:1
2. **Image gallery (section "Images"): product tag "Duurzamere keuze", inside a button**
    - Selector: `#_R_klqnpfiv5vcil4mbsnpfivb_`
    - HTML: `<span id="_R_klqnpfiv5vcil4mbsnpfivb_" class="min-w-0 truncate pr-0.5 pl-1.5 sm:pr-1 sm:pl-2">Duurzamere keuze</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 2.63 (foreground color: #ffffff, background color: #00b852, font size: 10.5pt (14px), font weight: bold). Expected contrast ratio of 4.5:1
3. **Product description (section "Productomschrijving"): product tag "Duurzamere keuze"**
    - Selector: `#_R_spqnpfiv5vcil4mbsnpfivb_`
    - HTML: `<span id="_R_spqnpfiv5vcil4mbsnpfivb_" class="min-w-0 truncate pr-0.5 pl-1.5 sm:pr-1 sm:pl-2">Duurzamere keuze</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 2.63 (foreground color: #ffffff, background color: #00b852, font size: 10.5pt (14px), font weight: bold). Expected contrast ratio of 4.5:1

## Product details – price

Located in: `[data-testid="product-card-price"]` inside `[data-testid="product-details"]`

### Elements must meet minimum color contrast ratio thresholds

Ensure the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds

- Rule: `color-contrast`
- Impact: serious
- [Success criteria: 1.4.3 Contrast (Minimum) (level AA)](https://www.w3.org/TR/WCAG21/#contrast-minimum)
- [More information](https://dequeuniversity.com/rules/axe/4.13/color-contrast)

#### Elements

1. **Tafellamp - jute: price € 29,95, whole part "29"**
    - Selector: `.self-baseline`
    - HTML: `<span data-testid="product-card-price-whole" class="flex items-baseline self-baseline font-bold text-8xl leading-[80px] tracking-[-1px]">29</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 2.48 (foreground color: #ff8200, background color: #ffffff, font size: 72.0pt (96px), font weight: bold). Expected contrast ratio of 3:1
2. **Tafellamp - jute: price € 29,95, fractional part "95"**
    - Selector: `.price-whole-xl`
    - HTML: `<span data-testid="product-card-price-fractional" class="price-whole-xl ml-[2px] font-bold text-3xl tracking-[-1.32px]">95</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 2.48 (foreground color: #ff8200, background color: #ffffff, font size: 22.5pt (30px), font weight: bold). Expected contrast ratio of 3:1

## Product details – add to cart button

Located in: `[data-testid="shop-pdp-add-to-cart-button"]` inside `[data-testid="product-details"]`

### Elements must meet minimum color contrast ratio thresholds

Ensure the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds

- Rule: `color-contrast`
- Impact: serious
- [Success criteria: 1.4.3 Contrast (Minimum) (level AA)](https://www.w3.org/TR/WCAG21/#contrast-minimum)
- [More information](https://dequeuniversity.com/rules/axe/4.13/color-contrast)

#### Elements

1. **Add to cart button "Plaats in winkelwagen"**
    - Selector: `.self-start > .px-1.truncate`
    - HTML: `<span class="truncate px-1">Plaats in winkelwagen</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 2.48 (foreground color: #ffffff, background color: #ff8200, font size: 12.0pt (16px), font weight: normal). Expected contrast ratio of 4.5:1

## Product card – price

Located in: `[data-testid="product-card"]`

### Elements must meet minimum color contrast ratio thresholds

Ensure the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds

- Rule: `color-contrast`
- Impact: serious
- [Success criteria: 1.4.3 Contrast (Minimum) (level AA)](https://www.w3.org/TR/WCAG21/#contrast-minimum)
- [More information](https://dequeuniversity.com/rules/axe/4.13/color-contrast)

#### Elements

1. **LSC Smart Connect buiten wandlamp - kubus: price € 18,95, whole part "18"**
    - Selector: `a[data-di-id="di-id-76295c7-1baab69"] > .order-1.grow.flex-col > .order-4.justify-end.pb-4 > .xxs\:items-end.justify-between.flex-wrap > .shrink.gap-1\.5[aria-label="€ 18,95"] > .text-orange-500.items-start.flex > .text-\[40px\].leading-\[28px\].md\:text-\[48px\]`
    - HTML: `<span data-testid="product-card-price-whole" class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">18</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 2.48 (foreground color: #ff8200, background color: #ffffff, font size: 36.0pt (48px), font weight: bold). Expected contrast ratio of 3:1
2. **LSC Smart Connect buiten wandlamp - kubus: price € 18,95, fractional part "95"**
    - Selector: `a[data-di-id="di-id-76295c7-1baab69"] > .order-1.grow.flex-col > .order-4.justify-end.pb-4 > .xxs\:items-end.justify-between.flex-wrap > .shrink.gap-1\.5[aria-label="€ 18,95"] > .text-orange-500.items-start.flex > .items-baseline.inline-flex > .text-\[20px\].leading-\[14px\].md\:text-\[28px\]`
    - HTML: `<span data-testid="product-card-price-fractional" class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 2.48 (foreground color: #ff8200, background color: #ffffff, font size: 21.0pt (28px), font weight: bold). Expected contrast ratio of 3:1
3. **Ronde hanglamp - smoke mat zwart: price € 49,95, whole part "49"**
    - Selector: `span[aria-label="€ 49,95"] > .text-orange-500.items-start.flex > .text-\[40px\].leading-\[28px\].md\:text-\[48px\]`
    - HTML: `<span data-testid="product-card-price-whole" class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">49</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 2.48 (foreground color: #ff8200, background color: #ffffff, font size: 36.0pt (48px), font weight: bold). Expected contrast ratio of 3:1
4. **Ronde hanglamp - smoke mat zwart: price € 49,95, fractional part "95"**
    - Selector: `span[aria-label="€ 49,95"] > .text-orange-500.items-start.flex > .items-baseline.inline-flex > .text-\[20px\].leading-\[14px\].md\:text-\[28px\]`
    - HTML: `<span data-testid="product-card-price-fractional" class="font-bold tracking-[1px] text-[20px] leading-[14px] md:text-[28px] md:leading-[19px]">95</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 2.48 (foreground color: #ff8200, background color: #ffffff, font size: 21.0pt (28px), font weight: bold). Expected contrast ratio of 3:1
5. **Dino knuffel XXL: price € 24,95, whole part "24"**
    - Selector: `.shrink.gap-1\.5[aria-label="€ 24,95"] > .text-orange-500.items-start.flex > .text-\[40px\].leading-\[28px\].md\:text-\[48px\]`
    - HTML: `<span data-testid="product-card-price-whole" class="font-bold tracking-[1px] text-[40px] leading-[28px] md:text-[48px] md:leading-[33px]">24</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 2.48 (foreground color: #ff8200, background color: #ffffff, font size: 36.0pt (48px), font weight: bold). Expected contrast ratio of 3:1
6. **Dino knuffel XXL: price € 24,95, fractional part "95"**
    - Selector: `.shrink.gap-1\.5[aria-label="€ 24,95"] > .text-orange-500.items-start.flex > .items-baseline.inline-flex > .text-\[20px\].leading-\[14px\].md\:text-\[28px\]`
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

1. **LSC Smart Connect buiten wandlamp - kubus: product tag "Superdeal"**
    - Selector: `#_R_676l9qnpfiv5vcil4mbsnpfivb_`
    - HTML: `<span id="_R_676l9qnpfiv5vcil4mbsnpfivb_" class="block truncate">Superdeal</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 2.48 (foreground color: #ffffff, background color: #ff8200, font size: 10.5pt (14px), font weight: bold). Expected contrast ratio of 4.5:1
2. **Ronde hanglamp - smoke mat zwart: product tag "Weekactie"**
    - Selector: `#_R_677la2npfiv5vcil4mbsnpfivb_`
    - HTML: `<span id="_R_677la2npfiv5vcil4mbsnpfivb_" class="block truncate">Weekactie</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 2.48 (foreground color: #ffffff, background color: #ff8200, font size: 10.5pt (14px), font weight: bold). Expected contrast ratio of 4.5:1
3. **Dino knuffel XXL: product tag "Superdeal"**
    - Selector: `#_R_678la2npfiv5vcil4mbsnpfivb_`
    - HTML: `<span id="_R_678la2npfiv5vcil4mbsnpfivb_" class="block truncate">Superdeal</span>`
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

## Product details – product information

Located in: `[data-testid="accordion-container"]` inside `[data-testid="shop-product-information"]`

### Heading levels should only increase by one

Ensure the order of headings is semantically correct

- Rule: `heading-order`
- Impact: moderate
- Success criteria: Best Practice
- [More information](https://dequeuniversity.com/rules/axe/4.13/heading-order)

#### Elements

1. **Heading "Beschrijving"**
    - Selector: `.md\:py-5.py-4[data-testid="accordion-container"]:nth-child(1) > h3`
    - HTML: `<h3>`
    - How to fix: Fix any of the following: Heading order invalid
