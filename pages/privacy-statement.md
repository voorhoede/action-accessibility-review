# Privacy statement

## Subsections are not headings

**Serious - WCAG 1.3.1 Info and Relationships (level A)**

The sub sections, like "1.1.1 Aankopen en bestellingen in onze filialen" and "1.1.2 Camerabewaking" for example, but also "Grote orders" and "BTW-bonnen" are marked up as paragraphs (`<p>`). This prevents screenreader users from jumping to them via heading navigation. But since they are visually not different from the surrounding text, sighted users can scan for them

**How to fix:** Use `<h4>` for the x.x.x titles and `<h5>` for the unnumbered ones under them and style them as headings. Use an `<h2>` for "Wat deze privacyverklaring omvat"

## Lists are paragraphs starting with "- "

**Moderate - WCAG 1.3.1 Info and Relationships (level A)**

Content that should be a list is marked up as paragraphs (`<p>`).

**How to fix:** Markup lists with `<ul>`/`<li>` elements

## Links not identifiable without colour

**Serious - WCAG 1.4.1 Use of Color (level A)**

Multiple links (the 7 browser links and two email addresses) rely only on colour to identify themselves as links.

**How to fix:** Underline all links in content text.

