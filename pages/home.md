# Home

## Hero image

### Campaign image without alternative text

**Minor - WCAG 1.1.1 Non-text Content (level A)**

The "Super Deals / online only" hero image is hidden from screenreader users and marked up as decorative. Because there is text inside the image, screenreader users miss that content.

**How to fix:** Add an `alt` attribute with the text content and move it out of the `aria-hidden` container. The SVG background image can stay hidden

### Heading level 1 (Tijdelijke deals) is not visible and might be confusing

**Minor - Recommendation**

In the Hero image block, there is a heading level 1 with the content: "Tijdelijke deals". Screenreader users find this heading where sighted users do not. Instead they are presented with the Super Deals graphic.

This does not violate WCAG 2.4.6 Headings and Labels (AA), because the following content lists temporary deals. However, the `<h1>` is often interpreted as the title of the document, and as such I interpret it as every item on this page is temporary. But looking at the page gives me a different impression. Because there are items marked as "Superdeal", I would expect that the _deals_ that are referenced in the page header (_Elke maandag om 12.00 nieuwe deals_) and the countdown block in the middle (_De deals op de webshop zijn slechts tijdelijk beschikbaar_) are some of the items available, but not all of them. The way the `<h1>` is positioned seems to indicate otherwise.

## New Deals block

### The timer does not get announced properly

**Serious - WCAG 1.3.1 Info and Relationships (level A)**

There is an animation that transitions when a digit changes. This is done by adding a lot of digits in the DOM and hiding them outside of their container. However, they are still present in the DOM and detectable by screenreaders. A screenreader tries to read the counter section, finds all digits and reads: 9.876.543.210.

**How to fix:** The proper data is already available in the `<time>` element wrapping everything in the `datetime` attribute.
- Add a `<span class="sr-only">` element with a written representation of the time as a child element. Make it fill the whole counter area. 
- Add `inert` to each other child element (`<div>`) of the `<time>` element

### The New Deals block DOM order does not match its visual placement

**Serious - WCAG 2.4.3 Focus Order (level A)**

The New Deals block in the DOM is different from its visual location. That means that when a keyboard user tabs through the page, the `Bekijk alle nieuwe deals` button is the first element they land on instead of the first item in the list. Because this block is far below the viewport, the whole viewport changes when tabbing into it. Not only are first items skipped (12 on desktop, 6 on mobile), any visual reference is lost.
When the user tabs again (out of the button onto the next interactive element), they land on the first item in the list. Because of that the whole viewport changes again.

**How to fix:** Put the banner in the DOM where it sits visually on the page. 

