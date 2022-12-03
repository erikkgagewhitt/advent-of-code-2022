function slice(array, first, last)
  local newArray = {}
  local j = 1;
  local start = #array - (last and (last - 1) or 0);
  local finish = first;

  if not first and not last then
    return nil;
  else
    if first and last then
      start = first;
      finish = last;
    elseif first then
      start = 1;
    elseif last then
      finish = #array;
    end
  end

  for i = start, finish, 1 do
    newArray[j] = array[i];
    j = j + 1;
  end

  return newArray;
end
