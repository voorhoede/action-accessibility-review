# Footer

## Newsletter Signup region

### Non descriptive label of the region

**Minor - Recommendation**

The label of the region is defined in the `aria-label` as `Nu inschrijven`. That phrase does not describe that it is about the newsletter.

**How to fix:** A suggestion: `aria-label="Inschrijven op de nieuwsbrief"`. An alternative would be to let the region be described by its heading: `<section aria-labelledby="shop-footer-newsletter-title">...</section>`.

### Non descriptive label of the signup button

**Minor - Recommendation**

The button on its own does not provide enough context.

**How to fix:** include a visually hidden text to augment the description like so:

```html
<a>
  Nu inschrijven <span class="sr-only">op de nieuwsbrief</span>
</a>
```

## Veilig winkelen list

### Region label is in English

**Minor - WCAG 3.1.2 Language of Parts (level AA)**

The region is named "Safe Shopping" via `aria-label`, while the page is in Dutch. Screenreaders will pronounce the label with a Dutch voice.

**How to fix:** Use the existing `<h2>` as a label via `aria-labelledby` instead of `aria-label`. Using `lang="en"` does not work since that marks the whole element as `en`.

### Explicit role is missing

**Minor - Recommendation**

On the `<ul>` element, there is no explicit `role` of `list`. But the `list-style` is set to `none`. In Safari that means that the list loses its semantics completely.

**How to fix:** Add `role="list"` to the `<ul>`

### Text in logo is missing in alt attribute

**Minor - WCAG 1.1.1 Non-text Content (level A)**

The Thuiswinkel waarborg image has an alt text of `Thuiswinkel`. The word `waarborg` is included in the image, but missing in the alt text.

The iDeal image has an alt text of `iDeal`. The word `wero` is included in the image but missing in the alt text

**How to fix:** Add the full text in the `alt` attribute `alt="iDeal | Wero"` and `alt="Thuiswinkel waarborg"`

## Award links

### Region label is in English

**Minor - Recommendation**

The region is named "Award links" via `aria-label`, while the page is in Dutch. Screenreaders will pronounce the label with a Dutch voice.

**How to fix**: Use a Dutch label like "Onderscheidingen links". But since the word "Award" is relatively commonplace in Dutch, and might be preferable over "Onderscheidingen". In that case, add a `<h2 id="award-links-label" class="sr-only" lang="en">Award links</h2>` in the region. Then use the `id` of that `<h2>` as value in `aria-labelledby` on the region instead of `aria-label`
