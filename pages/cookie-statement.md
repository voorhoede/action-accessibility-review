# Cookie statement

## Cookie category titles are not headings

**Serious - WCAG 1.3.1 Info and Relationships (level A)**

"Strikt noodzakelijke cookies (21)", "Voorkeurscookies (2)", "Analytische cookies (49)", "Marketing- en advertentiecookies (78)" and "Niet geclassificeerd (2)" are `<p>` elements. They are styled as headings (different colour, different font-weight). They function as the title of the tables. These tables have no `<caption>` describing the table. A screenreader user can not jump to a category with heading navigation and each table sounds the same: "table, 5 columns".
Because the tables cover most of the page makes the impact high.

**How to fix:** Use `<h3>` for the titles and use `aria-labelledby` on the tables to point to the heading.

## Multiple links not identifiable without colour

**Serious - WCAG 1.4.1 Use of Color (level A)**

Multiple links (the 7 browser links in section 5 and email link in section 6) rely only on colour to identify themselves as links.

**How to fix:** Underline all links in content text.

## List of suppliers is not marked up as a list

**Moderate - WCAG 1.3.1 Info and Relationships (level A)**

The 22 domains under "Leveranciers gebruikt op onze website" are listed as a paragraph with `<br>` between them.

**How to fix:** Use `<ul>`/`<li>` to make a proper list
