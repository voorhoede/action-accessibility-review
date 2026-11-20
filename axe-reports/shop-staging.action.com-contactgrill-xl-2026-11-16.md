# Gezonde gerechten bereiden doe je met de Petra panini- en gezondheidsgrill XL - | Action Webshop NL - https://shop-staging.action.com/nl-nl/p/5054061475241/contactgrill-xl

- Tested: 2026-11-16 with axe DevTools 4.140.0 (axe-core 4.13.0), standard WCAG 2.1 AA, best practices enabled
- Source: [`shop-staging.action.com-contactgrill-xl-2026-11-16.json`](./shop-staging.action.com-contactgrill-xl-2026-11-16.json)
- Issues: 3 (1 critical, 1 moderate, 1 minor)

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
