# Search | Action Webshop NL - https://shop-staging.action.com/nl-nl/search?q=pannenset

- Tested: 2026-11-16 with axe DevTools 4.140.0 (axe-core 4.13.0), standard WCAG 2.1 AA, best practices enabled
- Source: [`shop-staging.action.com-search-2026-11-16.json`](./shop-staging.action.com-search-2026-11-16.json)
- Issues: 17 (15 serious, 1 moderate, 1 minor)

## Product grid – filters

Located in: `[data-testid="grid-filter-item-label"]` inside `[data-testid="grid-filters-desktop"]`

### Elements must meet minimum color contrast ratio thresholds

Ensure the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds

- Rule: `color-contrast`
- Impact: serious
- [Success criteria: 1.4.3 Contrast (Minimum) (level AA)](https://www.w3.org/TR/WCAG21/#contrast-minimum)
- [More information](https://dequeuniversity.com/rules/axe/4.13/color-contrast)

#### Elements

1. **Filter "Prijs", option "€ 20 - 30": count "(5)"**
    - Selector: `#_R_5knd5fiv5vcil4mbsnpfivbH1_ > .text-neutral-500.font-normal`
    - HTML: `<span class="font-normal text-neutral-500"> (<!-- -->5<!-- -->)</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 1.87 (foreground color: #b6bec8, background color: #ffffff, font size: 10.5pt (14px), font weight: normal). Expected contrast ratio of 4.5:1
2. **Filter "Prijs", option "€ 40 - 50": count "(4)"**
    - Selector: `#_R_9knd5fiv5vcil4mbsnpfivbH1_ > .text-neutral-500.font-normal`
    - HTML: `<span class="font-normal text-neutral-500"> (<!-- -->4<!-- -->)</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 1.87 (foreground color: #b6bec8, background color: #ffffff, font size: 10.5pt (14px), font weight: normal). Expected contrast ratio of 4.5:1
3. **Filter "Prijs", option "€ 50 en meer": count "(1)"**
    - Selector: `#_R_dknd5fiv5vcil4mbsnpfivbH1_ > .text-neutral-500.font-normal`
    - HTML: `<span class="font-normal text-neutral-500"> (<!-- -->1<!-- -->)</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 1.87 (foreground color: #b6bec8, background color: #ffffff, font size: 10.5pt (14px), font weight: normal). Expected contrast ratio of 4.5:1
4. **Filter "Merk", option "Airtrack": count "(2)"**
    - Selector: `#_R_5l7d5fiv5vcil4mbsnpfivbH1_ > .text-neutral-500.font-normal`
    - HTML: `<span class="font-normal text-neutral-500"> (<!-- -->2<!-- -->)</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 1.87 (foreground color: #b6bec8, background color: #ffffff, font size: 10.5pt (14px), font weight: normal). Expected contrast ratio of 4.5:1
5. **Filter "Merk", option "Combekk": count "(1)"**
    - Selector: `#_R_9l7d5fiv5vcil4mbsnpfivbH1_ > .text-neutral-500.font-normal`
    - HTML: `<span class="font-normal text-neutral-500"> (<!-- -->1<!-- -->)</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 1.87 (foreground color: #b6bec8, background color: #ffffff, font size: 10.5pt (14px), font weight: normal). Expected contrast ratio of 4.5:1
6. **Filter "Merk", option "GreenChef": count "(3)"**
    - Selector: `#_R_dl7d5fiv5vcil4mbsnpfivbH1_ > .text-neutral-500.font-normal`
    - HTML: `<span class="font-normal text-neutral-500"> (<!-- -->3<!-- -->)</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 1.87 (foreground color: #b6bec8, background color: #ffffff, font size: 10.5pt (14px), font weight: normal). Expected contrast ratio of 4.5:1
7. **Filter "Merk", option "Home Essentials": count "(1)"**
    - Selector: `#_R_hl7d5fiv5vcil4mbsnpfivbH1_ > .text-neutral-500.font-normal`
    - HTML: `<span class="font-normal text-neutral-500"> (<!-- -->1<!-- -->)</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 1.87 (foreground color: #b6bec8, background color: #ffffff, font size: 10.5pt (14px), font weight: normal). Expected contrast ratio of 4.5:1
8. **Filter "Merk", option "Zwilling": count "(1)"**
    - Selector: `#_R_ll7d5fiv5vcil4mbsnpfivbH1_ > .text-neutral-500.font-normal`
    - HTML: `<span class="font-normal text-neutral-500"> (<!-- -->1<!-- -->)</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 1.87 (foreground color: #b6bec8, background color: #ffffff, font size: 10.5pt (14px), font weight: normal). Expected contrast ratio of 4.5:1
9. **Filter "Assortiment", option "Bijna uitverkocht": count "(1)"**
    - Selector: `#_R_5lnd5fiv5vcil4mbsnpfivbH1_ > .text-neutral-500.font-normal`
    - HTML: `<span class="font-normal text-neutral-500"> (<!-- -->1<!-- -->)</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 1.87 (foreground color: #b6bec8, background color: #ffffff, font size: 10.5pt (14px), font weight: normal). Expected contrast ratio of 4.5:1
10. **Filter "Kleur", option "Zwart": count "(5)"**
    - Selector: `#_R_5m7d5fiv5vcil4mbsnpfivbH1_ > .text-neutral-500.font-normal`
    - HTML: `<span class="font-normal text-neutral-500"> (<!-- -->5<!-- -->)</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 1.87 (foreground color: #b6bec8, background color: #ffffff, font size: 10.5pt (14px), font weight: normal). Expected contrast ratio of 4.5:1
11. **Filter "Kleur", option "Blauw": count "(3)"**
    - Selector: `#_R_9m7d5fiv5vcil4mbsnpfivbH1_ > .text-neutral-500.font-normal`
    - HTML: `<span class="font-normal text-neutral-500"> (<!-- -->3<!-- -->)</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 1.87 (foreground color: #b6bec8, background color: #ffffff, font size: 10.5pt (14px), font weight: normal). Expected contrast ratio of 4.5:1
12. **Filter "Kleur", option "Bruin": count "(2)"**
    - Selector: `#_R_dm7d5fiv5vcil4mbsnpfivbH1_ > .text-neutral-500.font-normal`
    - HTML: `<span class="font-normal text-neutral-500"> (<!-- -->2<!-- -->)</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 1.87 (foreground color: #b6bec8, background color: #ffffff, font size: 10.5pt (14px), font weight: normal). Expected contrast ratio of 4.5:1
13. **Filter "Kleur", option "Rood": count "(1)"**
    - Selector: `#_R_hm7d5fiv5vcil4mbsnpfivbH1_ > .text-neutral-500.font-normal`
    - HTML: `<span class="font-normal text-neutral-500"> (<!-- -->1<!-- -->)</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 1.87 (foreground color: #b6bec8, background color: #ffffff, font size: 10.5pt (14px), font weight: normal). Expected contrast ratio of 4.5:1
14. **Filter "Kleur", option "Zilver": count "(1)"**
    - Selector: `#_R_lm7d5fiv5vcil4mbsnpfivbH1_ > .text-neutral-500.font-normal`
    - HTML: `<span class="font-normal text-neutral-500"> (<!-- -->1<!-- -->)</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 1.87 (foreground color: #b6bec8, background color: #ffffff, font size: 10.5pt (14px), font weight: normal). Expected contrast ratio of 4.5:1
15. **Filter "Kleur", option "Geel": count "(1)"**
    - Selector: `#_R_pm7d5fiv5vcil4mbsnpfivbH1_ > .text-neutral-500.font-normal`
    - HTML: `<span class="font-normal text-neutral-500"> (<!-- -->1<!-- -->)</span>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 1.87 (foreground color: #b6bec8, background color: #ffffff, font size: 10.5pt (14px), font weight: normal). Expected contrast ratio of 4.5:1

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

## Product grid – filter heading

Located in: `[data-testid="grid-filters-group-title"]` inside `[data-testid="grid-filters-desktop"]`

### Heading levels should only increase by one

Ensure the order of headings is semantically correct

- Rule: `heading-order`
- Impact: moderate
- Success criteria: Best Practice
- [More information](https://dequeuniversity.com/rules/axe/4.13/heading-order)

#### Elements

1. **Heading "Filter"**
    - Selector: `section[data-testid="grid-filters-desktop"] > h3`
    - HTML: `<h3 class="text-body-large text-dark-blue-500 mb-5 flex items-center font-bold" data-testid="grid-filters-group-title">Filter</h3>`
    - How to fix: Fix any of the following: Heading order invalid
