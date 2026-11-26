# Search | Action Webshop NL (search dialog) - https://shop-staging.action.com/nl-nl/search?q=pannenset

- Tested: 2026-11-19 with axe DevTools 4.140.0 (axe-core 4.13.0), standard WCAG 2.1 AA, best practices enabled
- Source: [`shop-staging.action.com-search-dialog-2026-11-19.json`](./shop-staging.action.com-search-dialog-2026-11-19.json)
- Issues: 2 (1 critical, 1 minor)

## Search dialog – search bar

Located in: `form` inside `[data-testid="search-flyout-dialog"]`

### Buttons must have discernible text

Ensure buttons have discernible text

- Rule: `button-name`
- Impact: critical
- [Success criteria: 4.1.2 Name, Role, Value (level A)](https://www.w3.org/TR/WCAG21/#name-role-value)
- [More information](https://dequeuniversity.com/rules/axe/4.13/button-name)

#### Elements

1. **Clear search button (X icon), shown once text is typed in `[data-testid="search-flyout-input-field"]`**
    - Selector: `.focus-within\:border-dark-blue > .pr-3.pl-1[type="button"]`
    - HTML: `<button class="pr-3 pl-1" type="button">`
    - How to fix: Fix any of the following:
        - Element does not have inner text that is visible to screen readers
        - aria-label attribute does not exist or is empty
        - aria-labelledby attribute does not exist, references elements that do not exist or references elements that are empty
        - Element has no title attribute
        - Element does not have an implicit (wrapped) <label>
        - Element does not have an explicit <label>
        - Element's default semantics were not overridden with role="none" or role="presentation"

> **Reviewer note:** Suggestion:
> ```html
> <button>
>  <span class="sr-only">Verwijder zoekopdracht</span>
>  <svg>...</svg>
> </button>
> ```

### ARIA role should be appropriate for the element

Ensure role attribute has an appropriate value for the element

- Rule: `aria-allowed-role`
- Impact: minor
- Success criteria: Best Practice
- [More information](https://dequeuniversity.com/rules/axe/4.13/aria-allowed-role)

#### Elements

1. **Search form "Zoeken"**
    - Selector: `.focus-within\:border-dark-blue`
    - HTML: `<form role="group" class="bg-neutral-0 flex h-11 focus-within:border-dark-blue mb-4 flex-1 rounded-full border border-neutral-500 pr-[25px] pl-6 focus-within:border-2 md:mb-0 md:ml-6 md:pl-[25px]" data-gtm-form-interact-id="0">`
    - How to fix: Fix any of the following: ARIA role group is not allowed for given element

> **Reviewer note:** `<form>` does not allow `role="group"`. Since this is the site search, `role="search"` is allowed on `<form>` and exposes it as a search landmark. Alternatively remove the role. See [ARIA in HTML](https://www.w3.org/TR/html-aria/) (allowed roles for `form`: none, presentation or search).
