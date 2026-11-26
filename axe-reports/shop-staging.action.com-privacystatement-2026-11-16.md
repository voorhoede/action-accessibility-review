# Privacyverklaring | Action Webshop NL - https://shop-staging.action.com/nl-nl/privacy-statement

- Tested: 2026-11-16 with axe DevTools 4.140.0 (axe-core 4.13.0), standard WCAG 2.1 AA, best practices enabled
- Source: [`shop-staging.action.com-privacystatement-2026-11-16.json`](./shop-staging.action.com-privacystatement-2026-11-16.json)
- Issues: 4 (2 serious, 1 moderate, 1 minor)

## CMS markdown – link

Located in: `[data-testid="markdown-link"]` inside `[data-testid="markdown-paragraph"]`

### Links must be distinguishable without relying on color

Ensure links are distinguished from surrounding text in a way that does not rely on color

- Rule: `link-in-text-block`
- Impact: serious
- [Success criteria: 1.4.1 Use of Color (level A)](https://www.w3.org/TR/WCAG21/#use-of-color)
- [More information](https://dequeuniversity.com/rules/axe/4.13/link-in-text-block)

#### Elements

1. **Link "https://business.safety.google/privacy/" under heading "1.6. Online adverteren en marketingtechnologieën"**
    - Selector: `a[data-di-id="di-id-609d1285-23f6655"]`
    - HTML: `<a class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words" href="https://business.safety.google/privacy/" target="_blank" data-testid="markdown-link" rel="noreferrer noopener" data-di-id="di-id-609d1285-23f6655">https://business⁠.safety⁠.google/privacy/</a>`
    - How to fix: Fix any of the following:
        - The link has insufficient color contrast of 1.21:1 with the surrounding text. (Minimum contrast is 3:1, link text: #001489, surrounding text: #1a1a1a)
        - The link has no styling (such as underline) to distinguish it from the surrounding text
2. **Link "Onze leden | Europees Comité voor gegevensbescherming" under heading "6. Je rechten m.b.t. gegevensbescherming"**
    - Selector: `a[data-di-id="di-id-c0b5ebca-461e46e9"]`
    - HTML: `<a class="text-dark-blue-500 hover:shadow-bottom-border w-fit break-words" href="https://www.edpb.europa.eu/about-edpb/about-edpb/members_en" target="_blank" data-testid="markdown-link" rel="noreferrer noopener" data-di-id="di-id-c0b5ebca-461e46e9">`
    - How to fix: Fix any of the following:
        - The link has insufficient color contrast of 1.21:1 with the surrounding text. (Minimum contrast is 3:1, link text: #001489, surrounding text: #1a1a1a)
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

## CMS markdown – title

Located in: `[data-testid="markdown-title"]` inside `[data-testid="cms-markdown"]`

### Heading levels should only increase by one

Ensure the order of headings is semantically correct

- Rule: `heading-order`
- Impact: moderate
- Success criteria: Best Practice
- [More information](https://dequeuniversity.com/rules/axe/4.13/heading-order)

#### Elements

1. **Heading "Action respecteert jouw privacy."**
    - Selector: `.lg\:pt-0.bg-white[data-testid="cms-markdown"] > .lg\:px-8.px-4.relative > .mx-auto.max-w-7xl.w-full > .md\:max-w-\[598px\] > .gap-4.flex-col[data-content-king="rich-text"] > .max-w-\[800px\].gap-3.flex-col > h3:nth-child(1)`
    - HTML: `<h3 class="heading-lg text-dark-blue-500l" data-testid="markdown-title">Action respecteert jouw privacy⁠.</h3>`
    - How to fix: Fix any of the following: Heading order invalid
