function tablizeString(str, method)
  local array = {};

  if method == "key" then
    for i = 1, #str do
      array[str:sub(i, i)] = true;
    end
  else
    for i = 1, #str do
      array[i] = str:sub(i, i)
    end
  end

  return array;
end
