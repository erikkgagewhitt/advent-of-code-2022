function conglomerateArray(array, style)
  local newArray = {};

  if style == "sum" then
    for index, value in ipairs(array) do
      newArray[index] = sumArray(value);
    end
  end

  if style == "key" then
    for index, value in ipairs(array) do
      if not newArray[value] then
        newArray[value] = 1;
      else
        newArray[value] = newArray[value] + 1;
      end
    end
  end

  return newArray;
end
