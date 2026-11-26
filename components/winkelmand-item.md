# Winkelmand item

## Max amount per order reached is not announced

**Moderate - WCAG 4.1.3 Status Messages (level AA)**

When an item reaches its maximum amount, this is not announced. The result is that the add buttons stops working without notification

**How to fix:** use the same mechanism that is used in a product card on an overview page. There it is being announced.

## Link should be a heading

**Moderate - Recommendation**

The link to a product should be marked up as a heading level 2. That way it is more clear to the user that the following interactive elements belong to the product.

**How to fix:** Markup the link like so:

```html
<h2>
  <a href="...">Topper traagschuim matras 90 x 200</a>
</h2>
<p>90 x 200 cm</p>
```

## Announcement of changing amount of products can be improved

**Moderate - Recommendation**

When there are products added or removed only the new number is announced without much context.

**How to fix:** Add one shared status region in which content gets updated on every change

```html
<span role="status">Topper traagschuim matras: aantal 2. Totaal € 270,49</span>
```

## Link contains subtext

**Minor - Recommendation**

The link to a product contains the sub text of the product. This leads to unnecessary long links with potential duplicate content.

**How to fix:** Only put the title of the product in an `<a>` element.

## Disabled add button should be described

**Minor - Recommendation**

Some products have a limit on how much of them can be ordered. When that limit is reached, the add button gets disabled. There is text describing why it is disabled, but that text is not connected to the button, making it hard to understand why the button is disabled.

**How to fix:** Consider this markup:

```html
<button
  aria-label="één product toevoegen"
  aria-describedby="xyz"
  aria-disabled="true"
>
  <svg>
</button>
...
<p id="xyz">Je hebt het max. van 2 items per bestelling bereikt</p>
```

The `aria-describedby` references the reason, and using `aria-disabled` over `disabled` makes sure that the button keeps being focusable. Even with `tabindex="0"`, the button will not be focusable.

