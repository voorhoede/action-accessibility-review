# Pagination

## The component is not reachable via a landmark

**Moderate - Recommendation**

The pagination feature is a navigation element but is not marked up as such. This not only makes it hard for screenreader users to find (they have to tab through the whole page to find it), but because it also has no descriptive label, its contents are confusing (bare numbers).

This is not a violation of a WCAG SC per se, but it helps users navigate greatly

**How to fix:** Swap the containing `<div>` with `<nav aria-label="Paginering">`. Don't put 'navigatie' in the name, the `<nav>` element gets announced as such

## The links don't have descriptive labels

**Serious - WCAG 2.4.4 Link Purpose (In Context) (level A)**

The labels of links to pages are bare numbers. They don't describe where the link takes the user. Especially since the container does not have a label like 'Paginering', the user can not deduce the purpose of the link out of context. If the component were to get a descriptive label like 'Paginering', the severity would drop, but a proper label is advised.

**How to fix:** Add `aria-label="Pagina 2"` or `aria-label="Volgende pagina"` instead of the current `aria-label="2"` and `aria-label="Volgende"`.
On mobile consider to expand the label to `aria-label="Pagina 2 van 9"` since there is no indication of the total amount of pages.

## The links don't have a current page indicator

**Minor - Recommendation**

The current page item in the list is not marked up as such. By marking it like the current page it gives the user context about their whereabouts. Sighted users get this information through a darker outline, background and bold text.

**How to fix:** add `aria-current="true"` on the `<a>` element representing the current page
