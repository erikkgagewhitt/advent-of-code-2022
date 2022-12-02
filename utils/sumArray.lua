function sumArray(array)
  local total = 0;

  for index, value in ipairs(array) do
    total = total + value;
  end

  return total;
end
