# Algemene voorwaarden

## Table of contents hard to operate for keyboard users

**Moderate - WCAG 2.4.3 Focus Order (level A)**

The table of contents is made up of `<button>` elements. Pressing "Artikel 6" scrolls the page and updates the URL hash. But the focus stays on the button. When the user presses `tab` again, the page jumps back up to the table of contents. Keyboard users can not use the table of contents to navigate the page, screenreader users get no feedback that anything happened.

**How to fix:** Use `<a href="#artikel-6--herroepingsrecht">` instead of `<button>` elements. The IDs already exist, a native browser handling moves the focus to the target element. Put the links in `<nav aria-label="Artikelen"><ul>...</ul></nav>`

## English accessible name in Table of Contents item

**Minor - WCAG 3.1.2 Language of Parts (level AA)**

Each button in the table of contents has an `aria-label="Go to..."`. "Go to" is followed by the Dutch name of the article. For a screenreader user, these words are pronounced in a Dutch voice.

**How to fix:** When the above issue is done, the link is announced as being a link. The words "Go to" are then obsolete. The whole `aria-label` can be removed.

## Table of contents titles are cut off visually

**Moderate - Recommendation**

The labels truncate the text with `...` and there is no tooltip. Sighted users, and especially users using magnification, can not read where the buttons lead to.

**How to fix:** Let the text wrap.
