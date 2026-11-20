# Cookie banner

## Primary buttons "Accepteren" and "Selectie toestaan" text contrast is too low

**Serious - WCAG 1.4.3 Contrast (Minimum) (level AA)**

The button text lack enough contrast. The contrast of the white text on the orange background is 2.49:1. It needs to be 4.5:1.

**How to fix:** Use a darker orange.

## "Altijd actief" text contrast is too low

**Serious - WCAG 1.4.3 Contrast (Minimum) (level AA)**

The green on white contrast is 4.00:1. It needs to be 4.5:1

**How to fix:** Use a darker green

## Focus is lost when the modal is closed

**Moderate - WCAG 2.4.3 Focus Order (level A)**

When the modal is closed, the focus is lost. By default it moves back to the `<body>`. The focus should return to the trigger that opened the modal. Since this modal is opened by default. That trigger does not exist.

**How to fix:** move the focus to the skiplink when the modal is closed. To make sure the skiplink won't be visible to users that do not use a keyboard, change the visible state of the skiplink from `:focus` to `:focus-visible`. To do that switch `focus-within:not-sr-only` into `has-[:focus-visible]:not-sr-only` in the skiplink (assumed Tailwind v4).
