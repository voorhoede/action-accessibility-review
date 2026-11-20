# Checkout

## Back to cart button does not have a name on mobile

**Serious - WCAG 2.4.4 Link Purpose (In Context) (level A)**

On a small screen the text _Ga naar winkelmand_ is hidden via `display:none`. This removes it from the accessibility tree and thus, the link has no text.

**How to fix:** use `aria-label="Ga naar winkelmand"` on the `<a>` element

## No announcement after submit

**Critical - WCAG 3.3.1 Error Identification (level A)**

After a submit of the payment button, while there are errors on the page, the payment submit fails. The focus is moved to the first field with an error message. But the fact that the submit failed is not announced. Together with the "Error messages are not linked to their fields" issue in the Form field component, the user does not know that an error has occurred, or how it can be fixed.

**How to fix:** Although not required according to WCAG, a summary of what went wrong with links to the fields with an error would be the best solution. A minimal fix is to announce that the submit was not successful. 

## No announcement of payment provider error or address error

**Blocker - WCAG 3.3.1 Error Identification (level A)**

When there is no payment provider or delivery address selected and the form is submitted, there is no input field to focus. So the focus is lost. And although an error message is shown, that error is not announced.

**How to fix:** This issue is quite similar to the "No announcement after submit" issue, as is its fix. Announce that the error has occurred 

## Payment provider section does not meet expected radio group keyboard behaviour

**Moderate - Recommendation**

Because the payment options feature circles and checkmarks, the pattern is recognised (and announced) as a radio button group. However, each receive a tabstop and arrow keys do nothing. This can confuse keyboard/screenreader users because the interactions differ from normal / expected operation.

**How to fix**: Instead of buttons, use actual `<input type="radio" />` elements nested in `<label>` elements.

## Information about the privacy statement and terms and conditions comes after the submit button.

**Moderate - Recommendation**

Someone reading the page from top to bottom reaches the order button before the links to the terms and conditions, privacy statement and newsletter signup. Making it easy to miss them.

**How to fix:** Move them above the submit button

## Address lookup fills the "Postcode" and "Plaats" with a value without announcing it

**Minor - WCAG 4.1.3 Status Message (level AA)**

The fields "Postcode" and "Plaats" are filled in with information based on the provided address, this state change is not announced.

**How to fix:** Add a (potentially) hidden `role="status"` region that announces that these fields are filled in based on the Adres field.

## Billing fields "Adres", "Postcode" and "Plaats" appear twice with the same name

**Minor - Recommendation**

In a list of input fields, the same names appear. That means that they can not be told apart.

**How to fix:** Wrap each address in a `<fieldset>`/`<legend>`

## Payment provider heading should be improved

**Minor - Recommendation**

Above the list of payment providers, there is a heading "Betalen". Because the actual payment button sits under the "Je Winkelwagen" heading, the heading "Betalen" is confusing because a user can not perform the payment action there.

**How to fix:** Use the word "Betaalmethode" or a similar phrase instead of "Betalen"
