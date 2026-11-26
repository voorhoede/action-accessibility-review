# Afrekenen | Action Webshop NL - https://shop-staging.action.com/nl-nl/checkout

- Tested: 2026-11-16 with axe DevTools 4.140.0 (axe-core 4.13.0), standard WCAG 2.1 AA, best practices enabled
- Source: [`shop-staging.action.com-checkout-2026-11-16.json`](./shop-staging.action.com-checkout-2026-11-16.json)
- Issues: 10 (4 serious, 6 moderate)

## Checkout – delivery address

Located in: `[data-testid="delivery-address"]` inside `[data-testid="checkout-layout"]`

### autocomplete attribute must be used correctly

Ensure the autocomplete attribute is correct and suitable for the form field

- Rule: `autocomplete-valid`
- Impact: serious
- [Success criteria: 1.3.5 Identify Input Purpose (level AA)](https://www.w3.org/TR/WCAG21/#identify-input-purpose)
- [More information](https://dequeuniversity.com/rules/axe/4.13/autocomplete-valid)

#### Elements

1. **Input "Adres" (`street-input`)**
    - Selector: `#_r_p_`
    - HTML: `<input id="_r_p_" class="bg-neutral-0 placeho..." data-testid="street-input" placeholder="Adres" required="" autocomplete="do-not-autofill" role="combobox" aria-expanded="false" aria-autocomplete="list" aria-controls="_r_o_" value="">`
    - How to fix: Fix all of the following: the autocomplete attribute is incorrectly formatted
2. **Input "Postcode" (`postalcode-input`)**
    - Selector: `#_r_q_`
    - HTML: `<input id="_r_q_" class="bg-neutral-0 placeho..." data-testid="postalcode-input" placeholder="Postcode" required="" autocomplete="do-not-autofill" value="">`
    - How to fix: Fix all of the following: the autocomplete attribute is incorrectly formatted
3. **Input "Plaats" (`city-input`)**
    - Selector: `#_r_r_`
    - HTML: `<input id="_r_r_" class="bg-neutral-0 placeho..." data-testid="city-input" placeholder="Plaats" required="" autocomplete="do-not-autofill" value="">`
    - How to fix: Fix all of the following: the autocomplete attribute is incorrectly formatted

> **Reviewer note:** `do-not-autofill` is not a valid `autocomplete` value. Use the input purpose tokens instead: `address-line1` for "Adres" (single-line street address; `street-address` is meant for a multi-line field), `postal-code` for "Postcode" and `address-level2` for "Plaats". See [WCAG 2.1, Input Purposes for User Interface Components](https://www.w3.org/TR/WCAG21/#input-purposes).
>
> `do-not-autofill` may have been chosen to keep browser autofill from interfering with the address lookup on "Adres" (`role="combobox"`). However, an invalid value is not a documented alternative: the HTML spec treats it as having no autofill purpose, leaving autofill to the browser's interpretation ([HTML, autofill processing model](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#autofill-processing-model)).

## Checkout – order summary submit button

Located in: `[data-testid="checkout-submit-btn"]` inside `[data-testid="checkout-order-summary"]`

### Elements must meet minimum color contrast ratio thresholds

Ensure the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds

- Rule: `color-contrast`
- Impact: serious
- [Success criteria: 1.4.3 Contrast (Minimum) (level AA)](https://www.w3.org/TR/WCAG21/#contrast-minimum)
- [More information](https://dequeuniversity.com/rules/axe/4.13/color-contrast)

#### Elements

1. **Submit button "Bestellen en betalen"**
    - Selector: `.px-1`
    - HTML: `<span class="truncate px-1">Bestellen en betalen</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 2.37 (foreground color: #ffffff, background color: #00b6e7, font size: 12.0pt (16px), font weight: normal). Expected contrast ratio of 4.5:1

## Checkout – main landmark

Located in: `[data-testid="checkout-layout"]` inside `main#layout-page-content`

### Main landmark should not be contained in another landmark

Ensure the main landmark is at top level

- Rule: `landmark-main-is-top-level`
- Impact: moderate
- Success criteria: Best Practice
- [More information](https://dequeuniversity.com/rules/axe/4.13/landmark-main-is-top-level)

#### Elements

1. **Checkout main**
    - Selector: `.lg\:flex-7`
    - HTML: `<main class="border-neutral-150 lg:flex-7 lg:border-r lg:py-16 lg:pr-16 xl:pr-26">`
    - How to fix: Fix any of the following: The main landmark is contained in another landmark.

### Document should not have more than one main landmark

Ensure the document has at most one main landmark

- Rule: `landmark-no-duplicate-main`
- Impact: moderate
- Success criteria: Best Practice
- [More information](https://dequeuniversity.com/rules/axe/4.13/landmark-no-duplicate-main)

#### Elements

1. **Page main `#layout-page-content`**
    - Selector: `#layout-page-content`
    - HTML: `<main id="layout-page-content" class="relative grow">`
    - How to fix: Fix any of the following: Document has more than one main landmark

### Landmarks should have a unique role or role/label/title (i.e. accessible name) combination

Ensure landmarks are unique

- Rule: `landmark-unique`
- Impact: moderate
- Success criteria: Best Practice
- [More information](https://dequeuniversity.com/rules/axe/4.13/landmark-unique)

#### Elements

1. **Page main `#layout-page-content`**
    - Selector: `#layout-page-content`
    - HTML: `<main id="layout-page-content" class="relative grow">`
    - How to fix: Fix any of the following: The landmark must have a unique aria-label, aria-labelledby, or title to make landmarks distinguishable

## Footer – brand statement bar

Located in: `[data-testid="shop-footer-brand-statement"]` inside `[data-testid="shop-footer-usp-bar"]`

### All page content should be contained by landmarks

Ensure all page content is contained by landmarks

- Rule: `region`
- Impact: moderate
- Success criteria: Best Practice
- [More information](https://dequeuniversity.com/rules/axe/4.13/region)

#### Elements

1. **Brand statement "Uniek online assortiment in de webshop"**
    - Selector: `p[data-testid="shop-brand-statement-0"]`
    - HTML: `<p class="text-neutral-0" data-testid="shop-brand-statement-0">Uniek online assortiment in de webshop</p>`
    - How to fix: Fix any of the following: Some page content is not contained by landmarks
2. **Brand statement "Bezorgd binnen 3 werkdagen"**
    - Selector: `p[data-testid="shop-brand-statement-1"]`
    - HTML: `<p class="text-neutral-0" data-testid="shop-brand-statement-1">Bezorgd binnen 3 werkdagen</p>`
    - How to fix: Fix any of the following: Some page content is not contained by landmarks
3. **Brand statement "Elke maandag om 12.00 uur nieuwe deals"**
    - Selector: `p[data-testid="shop-brand-statement-2"]`
    - HTML: `<p class="text-neutral-0" data-testid="shop-brand-statement-2">Elke maandag om 12.00 uur nieuwe deals</p>`
    - How to fix: Fix any of the following: Some page content is not contained by landmarks

> **Reviewer note:** This issue is specific to the brand statement bar in the checkout page. The footer element (`[data-testid="shop-footer-usp-bar"]`) is marked up as a `<div>`. Make it a `<footer>` instead.
