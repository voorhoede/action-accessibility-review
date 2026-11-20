# Header

## Search bar

### Focus jumps after closing the search banner

**Serious - WCAG 2.4.3 Focus Order (level A)**

When the search bar is being used, a dialog replaces the initial component. When that dialog is closed, the focus state is lost and moves to `<body>`. The next tab press continues from the end of the page. The user expects to continue tabbing through the page from the search button, but nothing indicates that the focus has been moved.

**How to fix:** After closing the search dialog, bring the focus back to the button.

> **Note**: when the user closes the dialog with `Escape`, the focus stays on the now hidden input field. The fix is the same.

### Search field is a form that is non-functional

**Minor - Recommendation**

The search field in the header looks like a form, but is a button that opens a dialog. The element is wrapped in a `<form role="group">`. Because of the `role="group"` the semantics of the form are lost. The search icon has a label of `Zoeken`, but is permanently disabled. A screenreader user would hear an unavailable "Zoeken" button. A user who uses voice control that would say: "click Zoeken" can not activate the dialog.

**How to fix:**
- Replace the `<form role="group">` element with a `<search>` element. So it will end up in the landmarks list.
- Put the search icon (with `aria-hidden="true"`) inside the button 

```html
<search class="…">
  <button type="button" aria-controls="search-dialog" aria-haspopup="dialog"
          data-testid="search-flyout-input-button">
    <span>Waar ben je naar op zoek?</span>
    <svg aria-hidden="true" data-testid="SearchMagnifyingGlass">…</svg>
  </button>
</search>
```

## Shopping cart link

### Items in cart counter is not part of the button label

**Moderate - WCAG 1.3.1 Info and Relationships (level A)**

The item count badge is not included in the label of the link, it is only visually laid on top of it. Although a screenreader user can get to the number, there is no relationship to the link, and thus the relationship can not be established.

**How to fix:** Include the number in the `aria-label` like so `aria-label="Winkelwagen, 3 artikelen"`

## Main navigation

### Focus indicator is partly / largely hidden on each link

**Serious - WCAG 2.4.7 Focus Visible (level AA)**

When tabbing through the list, the focus indicator is clipped off. Especially the first and last item suffer from this because they only get the indicator on one edge. Making it impossible to see what item has focus. 

**How to fix (2 suggestions):**
- Suggestion 1: Provide vertical and horizontal margin to the `<a>` element (4px)
- Suggestion 2: Provide a negative `outline-offset` of `2px` and a `padding-inline` of `4px` to the `<a>` element

### Focus jumps after closing the mobile menu

**Serious - WCAG 2.4.3 Focus Order (level A)**

When the mobile menu is opened, the menu covers the whole viewport. When the menu is closed, the focus state is lost and moves to `<body>`. The next tab press continues from the end of the page. The user expects to continue tabbing through the page from the menu trigger, but nothing indicates that the focus has been moved.

**How to fix:** After closing the mobile menu, bring the focus back to opening button.

### Contrast of focus indicator in Thema's submenu is poor

**Moderate - Recommendation**

The focus indicator of the menu items under the `Thema's` submenu is poor. This focus ring is set against a large image which makes it hard to spot.

On the mobile viewport this also happens where the tiles are in the mobile menu

**How to fix (2 suggestions):**
- Suggestion 1: Give the focus indicator an offset via `outline-offset: 2px`
- Suggestion 2: Make the focus indicator thicker
