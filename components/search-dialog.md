# Search Dialog

## Close button is announced wrong

**Serious - WCAG 2.5.3 Label in Name (level A)**

The button with the visual label **Sluiten X** is announced as **Verwijder zoekopdracht**. The information screenreader users receive is different from the information sighted users see. And the **Verwijder zoekopdracht** is not the action performed when the button is clicked. When the button is clicked, the modal closes completely and in that process indeed removing the search query. But to get to the previous state, the user has to open the dialog again. The name **Verwijder zoekopdracht** is a better fit for the `X` button inside the `<form>` element.

**How to fix:** Use `aria-label="Sluiten zoekvenster"` or similar wording

## The page behind the dialog is reachable for a screenreader

**Serious - Recommendation**

The dialog is opened as a non-modal dialog. Although there is a keyboard trap, the virtual cursor of a screenreader can still read and interact with the dimmed page. This can lead to confusion.
Especially on mobile this is an issue where users move by swiping. Once the cursor enters the hidden page, the user can not track its location because of the dialog still open.

**How to fix:** Open the dialog via `showModal()`, that makes the background inert and handles Escape natively

## The whole search modal gets announced when searching

**Moderate - Recommendation**

When the user searches, all the content in the modal get announced. Although it is good to announce changes when search results or popular search terms change, the way it is set up now, the provided information makes the actual change very hard to hear.

**How to fix:** The `aria-live="polite"` placed on `div[data-testid="search-suggestions"]` should be removed. Instead the text indicating the number of results should be announced. That informs the user that there are changes. The user can then browse further through the dialog to find them

## Visual headings are not marked up as such

**Moderate - WCAG 1.3.1 Info and Relationships (level A)**

The dialog has no headings although the text is defining the content that follows and / or is styled like a heading. Texts like; "Eerder gezocht", "Populaire zoektermen", "Helaas, we konden geen resultaten vinden voor '...'" and "Probeer dit eens:" are candidate to become headings.

**How to fix:** Use `<h2>` elements for these texts

## Delete buttons all have the same name

**Moderate - Recommendation**

Each recent search item has a button `X` with the name "Verwijderen". In a list of buttons it is not clear which button deletes what

**How to fix:** use `aria-label="Verwijder 'lamp' uit eerder gezocht"`.

## The _Bekijk alle_ button label can be improved

**Minor - Recommendation**

The _Bekijk alle_ label is visually connected to the results. But for screenreader users, the label can be improved

**How to fix:** include a hidden label like so:

```html
<button>Bekijk alle <span class="sr-only">resultaten</span></button>
```
