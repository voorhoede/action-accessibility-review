# Login

## Loading state is not announced

**Moderate - WCAG 4.1.3 Status message (level AA)**

When the login button has been clicked, the button changes in a spinner. A sighted user gets feedback that something is happening, but a screenreader user does not. The change of the state is not announced

**How to fix:** When the user clicks on the button announce the state change in a `role="status"` region, or change the name of the button with a hidden text

## Link has confusing text out of context

**Moderate - WCAG 2.4.4 Link Purpose (In Context) (level A)**

The link "Klik dan hier" in the info panel explaining to view the order information without an account is confusing without context. In a list of links this link does not explain what it does.

**How to fix:** Use a more descriptive text like "Bekijk hier je orderinformatie zonder account". At a minimum place the link inside the paragraph with the explaining text.

