-- Puts the table of contents in its own section after the Introduction, right
-- before the "Shared components" heading. Pandoc's own --toc always puts it at
-- the top, so build without --toc and --toc-depth.

local anchor = "shared-components"

-- Filters run before --shift-heading-level-by, so levels are those in
-- report.md: depth 2 = parts (#) and components (##), no issues.
local depth = 2

function Pandoc(doc)
  local opts = PANDOC_WRITER_OPTIONS
  opts.toc_depth = depth
  local nav = {
    -- Level 1 here becomes <h2> after the shift; --section-divs wraps it in a <section>.
    pandoc.Header(1, "Table of contents", pandoc.Attr("table-of-contents")),
    pandoc.RawBlock("html", '<nav id="TOC" role="doc-toc">'),
    pandoc.structure.table_of_contents(doc.blocks, opts),
    pandoc.RawBlock("html", "</nav>"),
  }

  for i, block in ipairs(doc.blocks) do
    if block.t == "Header" and block.identifier == anchor then
      for j, b in ipairs(nav) do
        doc.blocks:insert(i + j - 1, b)
      end
      return doc
    end
  end

  error("toc.lua: heading #" .. anchor .. " not found, TOC not placed")
end
