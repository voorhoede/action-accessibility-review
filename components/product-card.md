# Product card

## All content of the card is inside the link

**Serious - Recommendation**

All content of the card, including the title, subtitle and price, is inside one link. Screenreaders read the whole card as the link's name, which is long. Screenreader users who browse a list of links, or tab through the page, hear this long name for every card.

Although this is not a direct violation, it severely hinders screenreader users, and leads to multiple additional issues. Heydon Pickering describes a solution in the [Cards](https://inclusive-components.design/cards/) chapter of Inclusive Components.

**How to fix:** Wrap only the product title in the link, and use a pseudo-element on the link to make the whole card clickable.

## The add-to-cart button is nested inside the card link

**Critical - WCAG 4.1.2 Name, Role, Value (level A)**

The "Plaats in winkelwagen" button is inside the card link. The [HTML content model of `a`](https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-a-element) says there must be "no interactive content descendant". VoiceOver treats the link as a single element. A user can not add a product to the shopping cart via the card, they have to go to the product detail page first, which is a big detour.

**How to fix:** Move the button out of the link. The card pattern from the "All content of the card is inside the link" issue makes this possible: the link only wraps the title, and the button sits next to it.

## The add-to-cart button does not provide a status message

**Serious - WCAG 4.1.3 Status Message (level AA)**

When pressing the "Plaats in winkelwagen" button, only a visual loader indicator is being shown. The counter in the "Winkelwagen" button in the header is updated, but that button is often out of view. Because there is no status message provided, a screenreader user does not know that the action was successful and will probably attempt to re-add the item, resulting in multiple items being added.

There _is_ a message announced when the maximum amount of items is added. It is presented as a toast message which is also announced. So a mechanism for announcing the successful addition of an item could use that same feature

**How to fix:** Write a message (like "MGO Bijzettafel toegevoegd aan winkelwagen") to a `role="status"` region. See the [Using `role=status` to present status messages](https://www.w3.org/WAI/WCAG22/Techniques/aria/ARIA22) Technique for an example. 

## Sustainability tag and price lose their text once moved out of the card link

**Serious - WCAG 1.1.1 Non-text Content (level A) / 1.3.1 Info and Relationships (level A)**

This issue does not occur yet. It appears when the 'All content of the card is inside the link' issue is fixed as suggested: the sustainability tag and the large price no longer live inside an element with a role. The containing span has a default role of `generic`. ARIA 1.2 forbids naming the `generic` role, so screenreaders will not pick up the name.

**How to fix:** On the elements with `aria-label="Duurzaamheid"` add `role="img"`. For the price, see the Price component issue

## The title is repeated three times in the link

**Moderate - Recommendation**

The name of an item is repeated 3 times in the card label. Because all the content of the card is inside the `<a>` element, all the containing content is being part of that name. The card has the name of the item as text, and twice as `alt` on an image.

**How to fix:** Fix the `All content of the card is inside the link` issue

## The product title is a `<span>` not a heading

**Minor - Recommendation**

If the product title would be a heading, the list of items could be navigated through the heading list, [which most of the screenreader users use as primary way of navigation](https://webaim.org/projects/screenreadersurvey10/#finding)

**How to fix:** (after the content is removed from the link) wrap the `<a>` element inside a `<h3>`. Make sure that the heading level used is appropriate for the context in which it is used
