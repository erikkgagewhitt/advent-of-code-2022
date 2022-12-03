function cloneTable(tableIn)
  local tableOut = {};

  if type(tableIn) ~= "table" then
    return nil;
  end

  for key, value in pairs(tableIn) do
    if type(value) == "table" then
      tableOut[key] = cloneTable(value);
    else
      tableOut[key] = value;
    end
  end

  return tableOut;
end
