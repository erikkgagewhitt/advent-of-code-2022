function wrapGetValue(array, value, n)
  local index = nil;
  local i = 1;

  while not index do
    if i > #array then
      return nil;
    end

    if array[i] == value then
      index = i;
    end
    i = i + 1;
  end

  local newIndex = index + n;

  while newIndex < 1 do
    newIndex = #array + newIndex;
  end
  while newIndex > #array do
    newIndex = newIndex - #array;
  end

  return array[newIndex];
end
