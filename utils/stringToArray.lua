function stringToArray(aString, separator)
  local newArray = {};

  for str in string.gmatch(aString, "([^" .. separator .. "]+)") do
    table.insert(newArray, str);
  end

  return newArray;
end
