function CodeBlock(block)
  local newblock = block
  if (FORMAT:match "html") and 
     (block.classes[1]) then
    --newblock.text = tostring(block.classes[1]).."\n"..block.text
    local langname = block.classes[1]
    out = {pandoc.Div(
      pandoc.Span(
        block.classes[1], 
        {class = "langnametext"}
      ),
      {class = "langname"}
    ), 
      newblock
    }
     else
      out = newblock
  end
  return out
end