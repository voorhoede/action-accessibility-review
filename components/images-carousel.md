# Images carousel

## Container label does not match page language

**Minor - WCAG 3.1.2 Language of Parts (level AA)**

The region has an `aria-label="Images"` attribute without an `lang="en"` attribute to indicate that its label should be pronounced differently. See the heading structure for the _Productomschrijving_ for a method of improving the label further.

**How to fix:** Include a `lang="en"` to the section element

**How to improve:** Rename the `aria-label` value to: `Afbeeldingen`. Or improve the label further by using a `<h2>` as its label and making the images discoverable via heading navigation as well like so:

```html
<section aria-labelledby="images-label">
  <h2 id="images-label" class="sr-only">Afbeeldingen</h2>
  ...
</section>
```

## Images / thumbnails in the carousel do not have a proper alt attribute.

**Serious - WCAG 1.1.1 Non-text Content (level A)**

The small images below the main image all have an `alt="Navigate to image"` attribute.
The `alt` attribute should be used to describe the image.

**How to fix:** Give a description of the image in the alt text

## Thumbnail buttons all have identical names

**Moderate - Recommendation**

Each button has the same name, making it hard to tell the individual buttons apart

**How to fix:** Use a more descriptive name like so: `aria-label="Toon afbeelding 2 van 6"` on the button element

## The selected thumbnail is only indicated visually

**Moderate - WCAG 4.1.2 Name, Role, Value (level A)**

The current selected thumbnail gets only an outline. Screenreader users do not know which item is active. Making it harder to navigate.

**How to fix:** Add `aria-current="true"` to the button element

## Thumbnails should be marked up as a list

**Minor - Recommendation**

The row of thumbnails is not identified as being a list. Because of this, a screenreader user does not get additional information like how many items there are in the list, or has the ability to skip over the list entirely

**How to fix:** Instead of the current `div`s, use `<ul>`/`<li>` elements.
