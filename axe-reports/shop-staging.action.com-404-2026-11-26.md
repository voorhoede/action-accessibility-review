# Oeps! We konden niet vinden wat je zocht... | Action Webshop NL - https://shop-staging.action.com/blubje

- Tested: 2026-11-26 with axe DevTools 4.140.0 (axe-core 4.13.0), standard WCAG 2.1 AA, best practices enabled
- Source: [`shop-staging.action.com-404-2026-11-26.json`](./shop-staging.action.com-404-2026-11-26.json)
- Issues: 2 (1 serious, 1 moderate)

> **Reviewer note:** The 404 page uses a different template than the rest of the shop (other header, footer and class names, no `data-testid` attributes). Elements are located by `id` and section heading instead.

## Footer – newsletter signup

Located in: section "Altijd als eerste op de hoogte" inside `#footer`

### Elements must meet minimum color contrast ratio thresholds

Ensure the contrast between foreground and background colors meets WCAG 2 AA minimum contrast ratio thresholds

- Rule: `color-contrast`
- Impact: serious
- [Success criteria: 1.4.3 Contrast (Minimum) (level AA)](https://www.w3.org/TR/WCAG21/#contrast-minimum)
- [More information](https://dequeuniversity.com/rules/axe/4.13/color-contrast)

#### Elements

1. **Newsletter link "Inschrijven voor nieuwsbrief"**
    - Selector: `.is-align-items-start > .is-primary.is-rounded.button`
    - HTML: `<a href="https://www.action.com/nl-nl/nieuwsbrief-registratie-ecommerce/" target="_blank" class="button is-primary is-rounded">Inschrijven voor nieuwsbrief</a>`
    - How to fix: Fix any of the following: Element has insufficient color contrast of 2.48 (foreground color: #ffffff, background color: #ff8200, font size: 12.0pt (16px), font weight: normal). Expected contrast ratio of 4.5:1

## Page

Located in: `html`

### Page should contain a level-one heading

Ensure that the page, or at least one of its frames contains a level-one heading

- Rule: `page-has-heading-one`
- Impact: moderate
- Success criteria: Best Practice
- [More information](https://dequeuniversity.com/rules/axe/4.13/page-has-heading-one)

#### Elements

1. **Document**
    - Selector: `html`
    - HTML: `<html lang="nl">`
    - How to fix: Fix all of the following: Page must have a level-one heading

> **Reviewer note:** The page title "Oeps! We konden niet vinden wat je zocht..." is marked up as an `<h4>`. All other headings on the page are `<h4>` as well. Making the page title the `<h1>` fixes this issue.
