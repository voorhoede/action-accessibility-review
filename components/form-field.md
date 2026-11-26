# Form field

## Error messages are not linked to their fields

**Critical - WCAG 1.3.1 Info and Relationships (level A)**

When an error appears under a field, the error and the field are not programmatically connected. The error appears when the user tabs out of the field and into the next one. Thereby skipping over the error. Tabbing back into the field will also not reveal the error.

**How to fix:** use `aria-invalid="true"` and `aria-describedby="error-id"` to link the field to the error like so:

```html
<input
  type="email"
  name="email"
  required
  aria-invalid="true"
  aria-describedby="email-error"
/>
<p id="email-error">Voer een geldig e-mailadres in</p>
```

## Input fields lose their focus indicator when they have an error

**Serious - WCAG 2.4.7 Focus Visible (level AA)**

When an input field has an error, the border becomes red. But that same border is being used as a focus indicator. Since the error state takes precedence, the input field loses its focus indicator

**How to fix:** Use the `outline` with an offset as the focus indicator instead of the border colour. That way the border keeps its error colour and the outline is visible when it receives focus

## Geboortedatum is not a group

**Moderate - WCAG 1.3.1 Info and Relationships (level A)**

The `<label>` with 'Geboortedag' in it has a `for="dateOfBirth"` attribute, but the id `dateOfBirth` is not found on the page. Thus it is not linked to an input field. The hint about the age restriction is also not connected, and thus not announced. When tabbing through the form, this text is missed.

**How to fix:** Use a `<fieldset>`/`<legend>Geboortedatum</legend>` to group and link the input fields. Use `aria-describedby` to connect the age restriction field

## Date fields jump to the next field on their own

**Moderate - WCAG 3.2.2 On Input (level A)**

After two digits, the focus moves to the next field without explaining this behaviour. A user that is used to tabbing to the next field fills in the day field, the focus gets moved to the month field and tabs directly to the year field. This leads to confusion

**How to fix:** While describing this behaviour would fix the violation, removing the auto-advance feature will give the user more control over their flow

## Date fields use `type="number"`

**Moderate - Recommendation**

With the `type="number"`, the browser provides tools to deal with numbers. Like using the up and down arrows to increase / decrease the value. In some browsers the mouse wheel or trackpad scroll will increase / decrease the value as well. All without it being announced. 

GOV.UK, did some research on this topic: [Why the GOV.UK Design System team changed the input type for numbers](https://technology.blog.gov.uk/2020/02/24/why-the-gov-uk-design-system-team-changed-the-input-type-for-numbers/)

**How to fix:** Using `<input type="text" inputmode="numeric" autocomplete="bday-year">`
- `type="text"` will make `maxlength` work and remove the arrow / wheel behaviour
- `inputmode="numeric"` keeps the number keypad on mobile

## Password toggle does not expose its state

**Moderate - Recommendation**

The label of the showing/hiding of the password never changes when the feature is used. There is no `aria-pressed` indicating the current state. A screenreader user can not tell if the password is visible or not.

**How to fix:** Use `aria-pressed="true"` / `aria-pressed="false"` to indicate the visibility of the password, and update the button text to reflect that
