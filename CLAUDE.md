# Manual accessibility review

This repo documents an accessibility review of https://shop-staging.action.com. The automated scans are done. Peter now reviews one page at a time by hand. He asks questions about the page, or asks for an analysis of (part of) it.

Standard: **WCAG 2.1, level AA**. Link success criteria to `https://www.w3.org/TR/WCAG21/#<anchor>`, and check that the anchor exists.

## Repo layout

- `axe-reports/<host>-<page>-<date>.json`: axe DevTools exports. The `.md` next to each is a report generated from it. Both are finished: use them as input, don't edit them.
- `pages/<page>.md`: Peter's rough notes from the manual review, per page. Only edit them when he asks.
- `components/<component>.md`: Peter's notes for components that appear on several pages (header, footer, product card, …). Same rules as `pages/`.
- `pages/<page>.report.md`: draft reports. Not final, and not a reference for the format. Don't edit or create them unless Peter asks.
- `README.md`: the introduction of the client report. `conclusion.md`: its conclusion and closing thoughts, placed after the introduction. Both are Peter's text: check spelling when asked, but don't rewrite them.
- `report.md`: the client report, generated from the notes and axe reports. To (re)generate it, follow `report-instructions.md`. Don't edit `report.md` by hand.

## Issue format in the notes

Follow the format of `components/header.md`:

````md
## <Component>

### <Issue title>

**<Severity> - WCAG <number> <name> (level <level>)**

<What is wrong, and who is affected and how.>

**How to fix:** <fix>
````

- **Violation or Recommendation.** Use the WCAG line only for a clear failure of a level A or AA success criterion. Everything else is a recommendation: `**<Severity> - Recommendation**`. Give a recommendation a severity whenever possible. Only use plain `**Recommendation**` when the severity can't be determined.
- **Severity** uses the axe impact levels, so readers can prioritise the manual issues together with the axe issues ([Deque: impact levels](https://docs.deque.com/auditor/2.29/en/impact_levels)):
    - Blocker: prevents users from completing core functionality (e.g. ordering, logging in).
    - Critical: a significant obstacle that frustrates users; core functionality is still possible, or non-core content is unreachable.
    - Serious: some barriers, but users can still reach the core content.
    - Moderate: less impact; users can still use the page.
    - Minor: little impact; fix when a low-risk fix is available.
- When it is arguable whether something fails a criterion, give the arguments on both sides and a recommendation, and let Peter decide.
- Back every normative claim with a W3C source (WCAG 2.1 spec, Understanding document, technique, or APG) and link it. Keep normative requirements, best practice and opinion apart.
- Name the component by its nearest `data-testid`, so developers can find it.

## Analysing a page

1. Read the axe report for the page in `axe-reports/` first. Don't report issues again that axe already found.
2. Check the live page (see below): semantics, accessibility tree, keyboard and focus behaviour, states after interaction (dialogs, menus, mobile viewport).
3. Report findings in chat. Peter decides what goes into the notes.

## Using the live page

- Use the Chrome browser tools. Reuse an existing tab if one is open, otherwise create one. Leave it open when you are done.
- If you get the Cloudflare sign-in page, ask Peter to sign in. Never enter credentials yourself.
- If you get a cookie banner, close it. It has been documented before.
- **The live page may differ from the scan.** Deals change every Monday at 12:00. Before comparing with an axe report, check that the elements still match (same text, prices and `data-di-id` values). If they don't, tell Peter.

## Limits

- You can't run real screen readers (VoiceOver, NVDA, JAWS, TalkBack) or voice control. You can read the accessibility tree, but say when a finding still needs to be confirmed with assistive technology.

## Gotchas

- Prices in selectors and `aria-label`s use a non-breaking space (`€ 18,95`, U+00A0). Copy selectors, don't retype them, or `querySelector` won't find the element.
- The browser tool can block text output as "[BLOCKED: Base64 encoded data]". Clean the text first (e.g. strip digits) or read it in a different way.
- Generated IDs (`#_R_…`) and `data-di-id` values can change after a rebuild. Prefer `data-testid` to point at an element.
