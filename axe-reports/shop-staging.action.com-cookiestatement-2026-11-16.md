# Cookiestatement | Action Webshop NL - https://shop-staging.action.com/nl-nl/cookie-statement

- Tested: 2026-11-16 with axe DevTools 4.140.0 (axe-core 4.13.0), standard WCAG 2.1 AA, best practices enabled
- Source: [`shop-staging.action.com-cookiestatement-2026-11-16.json`](./shop-staging.action.com-cookiestatement-2026-11-16.json)
- Issues: 3 (1 serious, 1 moderate, 1 minor)

## Cookie declaration

Located in: `[data-testid="cookie-declaration"]`

### Links must be distinguishable without relying on color

Ensure links are distinguished from surrounding text in a way that does not rely on color

- Rule: `link-in-text-block`
- Impact: serious
- [Success criteria: 1.4.1 Use of Color (level A)](https://www.w3.org/TR/WCAG21/#use-of-color)
- [More information](https://dequeuniversity.com/rules/axe/4.13/link-in-text-block)

#### Elements

1. **Link "Cookiebot" in "Cookieverklaring laatst bijgewerkt op 19/10/2026 door Cookiebot:"**
    - Selector: `a[href$="www.cookiebot.com"]`
    - HTML: `<a href="https://www.cookiebot.com" target="_blank" rel="noopener" title="Cookiebot" data-di-id="di-id-e4c12061-826976a4">Cookiebot</a>`
    - How to fix: Fix any of the following:
        - The link has insufficient color contrast of 1.99:1 with the surrounding text. (Minimum contrast is 3:1, link text: #001489, surrounding text: #505862)
        - The link has no styling (such as underline) to distinguish it from the surrounding text

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

## Cookie statement – content

Located in: `.CookieDeclaration-module__eQWa__contentStackContent`

### Heading levels should only increase by one

Ensure the order of headings is semantically correct

- Rule: `heading-order`
- Impact: moderate
- Success criteria: Best Practice
- [More information](https://dequeuniversity.com/rules/axe/4.13/heading-order)

#### Elements

1. **Heading "Data Protection Officer Action"**
    - Selector: `h4`
    - HTML: `<h4>Data Protection Officer Action  </h4>`
    - How to fix: Fix any of the following: Heading order invalid
