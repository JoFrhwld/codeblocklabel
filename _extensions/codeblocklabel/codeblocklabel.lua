local function makeCodeName(codename)
  local codediv = pandoc.Div(
    pandoc.Span(codename, {class = "langname"}),
    {class = "langname"}
  )
  return codediv
end

function Div(div)
  local out = nil
  -- out = tostring(div.classes[1])
  if div.classes:includes("cell") then
      local content = div.content
      table.insert(content, 1, makeCodeName(div.content[1].classes[1]))
      out = pandoc.Div(
        content
      )
      out.attr = div.attr
      out.identifier = div.identifier
      --return out
  elseif div.classes:includes("sourceCode") then
    out = tostring(div.classes[1])
  end
  return out
end

