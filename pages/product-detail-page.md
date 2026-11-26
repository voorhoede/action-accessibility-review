# Product detail page

## Heading structure misses a level

**Moderate - Recommendation**

The headings `Beschrijving`, `Specificaties` and `Verzenden & Retourneren` are marked up as a heading level 3. But there is no heading level 2 between them and the page title.

**How to fix:** The containing section has `aria-label="Productomschrijving"`. Instead of using aria label here, add a `<h2>` and use that to label the section like so:

```html
<section aria-labelledby="productdescription-label">
  <h2 id="productdescription-label" class="sr-only">Productomschrijving</h2>
  ...
</section>
```

This can also be applied to the `Images` section, making it easier to find via headings

## Variation chooser 

### Variants should be marked up as a list

**Minor - Recommendation**

The list of variants is not marked up as being a list. Because of this, a screenreader user does not get additional information like how many variants there are available, or have the ability to skip over the list entirely

**How to fix:** Instead of the current `div`s, use `<ul>`/`<li>` elements.

### Current variation is only visually indicated

**Moderate - WCAG 4.1.2 Name, Role, Value (level A)**

The product variations are links to different pages. The currently selected variant is given an outline. But programmatically it is not identified as such. As a further complication, the current variation is a button, instead of a link.

**How to fix:** Make the current variation a link as well and add `aria-current="page"` to it.

## Duurzamere keuze info block

### "Lees meer" cannot be operated with the keyboard

**Critical - WCAG 2.1.1 Keyboard (level A)**

- url: https://shop-staging.action.com/nl-nl/p/8720168447203/mgo-bijzettafel

The "Lees meer" control expands the sustainability block. It is an `<a>` without an `href`, so it cannot receive keyboard focus. While the block is collapsed, the links inside it have `tabindex="-1"`. Only after expanding do they get `tabindex="0"`. Keyboard users, thus, can not expand the block or reach its links.

**How to fix:** Replace the `<a>` with a `<button>` element. Not only is this the semantically correct element, it always receives keyboard focus.
