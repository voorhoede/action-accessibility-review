# Price component

## Information is not presented properly

**Moderate - WCAG 1.3.1 Info and Relationships (level A)**

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
