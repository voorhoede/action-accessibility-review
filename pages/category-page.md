# Category page

## Results not announced after filtering

**Serious - WCAG 4.1.3 Status Message (level AA)**

When a user uses the filter feature, the change in items on the page is not announced. On the top there is a total amount to results text, but that is not read out when the filters change. Because there is also not a page refresh, screenreader users or users that zoom the page are not aware that their actions had an effect

**How to fix:** announce the change in results in a `role="status"` region. See the [Using `role=status` to present status messages](https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA22) Technique for an example. This should be done for the total amount of items but also the amount of active filters.

## Focus is lost after removing active filter, clicking 'Bekijk meer' and closing the mobile filter dialog

**Serious - WCAG 2.4.3 Focus Order (level A)**

When an active filter is removed, the focus is lost. By default that focus ends up on the `<body>` which means that the next `tab` press will be at the bottom of the document.

**How to fix:** When the filter list is being rerendered while the focus was inside of the filter list, the focus need to be preserved. This does happen when one of the filter items is being toggled. And when the filter dialog is closed, focus should move back to the open button

## Active filter pill name does not state its purpose

**Moderate - WCAG 1.1.1 Non-text Content (level A)**

The filter pill is a button that, when pressed, removes the filter. This purpose is not stated in the button label. A sighted user sees the `x` and takes its meaning from that cue. But a screenreader user only hears the label of the filter.

**How to fix:** Either add an `aria-label="Verwijder filter: Tot € 20"` to the `<button>` element. Or include a hidden text inside the button. It is advised that the purpose is stated before the filter name, so `Verwijder filter: Tot € 20` instead of `Tot € 20 Verwijderen filter`. In the last case the user needs to hear the whole label before the purpose is clear.

## Heading structure can be improved

**Moderate - Recommendation**

The heading structure can be improved to help navigating the page better. The `Filter` is a heading level 3, the same as the headings for the filter sections like `Prijs` and `Merk`. Visually, and conceptually, the `Prijs` and `Merk` headings are nested below the `Filter`, but the markup does not describe it like that. Also, the product list does not have a heading. This is not an issue for sighted users, but users navigating by headings might miss the whole list since there _are_ headings for `Wonen`, `Gordijnen`, `Vloerkleden`, `Leuke meubels...` and more.

**How to fix:**
- Make the `Filter` heading a heading level 2
- Add a `Beschikbare producten` heading level 2 above the product list 

## Labels can be improved

**Minor - Recommendation**

In the filter item, the number of matching items for that item is provided in `()`. For example: `Tot € 20 (17)`. The `(17)` part is dimmed. A sighted user sees this difference between the bold and dimmed text, a screenreader user only hears `Tot € 20 17`. The lack of `()` add to the confusion. The same is true for the amount of active filters next to the `Filter` heading, the `Wis alle` button and the `Bekijk meer` toggle. 

**How to fix:** Include a hidden text providing more context to the items:

For the total products:

```html
<span>Tot € 20 (17 <span class="sr-only">Producten</span>)</span> 
```

For the active filters:

```html
<h3>Filter <span>1 <span class="sr-only">actief</span></span></h3>
```

For the _Wis alle_ button:

```html
<button>Wis alle <span class="sr-only">filters</span></button>
```

For the _Bekijk meer_ button:

```html
<button>Bekijk meer <span class="sr-only">Merk filters</span></button>
```
