function arrayContainsValue(array, valueIn)
  for index, value in ipairs(array) do
    if value == valueIn then
      return true;
    end
  end

  return false;
end
