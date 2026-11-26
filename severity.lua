-- Wraps each severity line (a paragraph with only bold text, like
-- "**Serious - WCAG 2.4.3 Focus Order (level A)**") in
-- <div class="severity severity-serious"> so report.css can colour the issue.

local levels = { blocker = true, critical = true, serious = true, moderate = true, minor = true }

function Para(el)
  if #el.content ~= 1 or el.content[1].t ~= "Strong" then
    return nil
  end

  local text = pandoc.utils.stringify(el.content[1])
  local first = (text:match("^(%a+)") or ""):lower()

  local level
  if levels[first] then
    level = first
  elseif first == "recommendation" or first == "todo" then
    level = "none"
  else
    return nil
  end

  return pandoc.Div({ el }, pandoc.Attr("", { "severity", "severity-" .. level }))
end
