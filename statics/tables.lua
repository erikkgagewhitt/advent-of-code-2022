function letters()
  local lettersList = {};

  for i = 97, 122, 1 do
    table.insert(lettersList, utf8.char(i));
  end
  for i = 65, 90, 1 do
    table.insert(lettersList, utf8.char(i));
  end

  return lettersList;
end

function lettersKey(offsetInOne, offsetInTwo)
  local offsetOne = type(offsetInOne) == "number" and offsetInOne or 0;
  local offsetTwo = type(offsetInOne) == "number" and offsetInTwo or 0;
  local lettersList = {};

  for i = 97, 122, 1 do
    lettersList[utf8.char(i)] = i + offsetOne;
  end
  for i = 65, 90, 1 do
    lettersList[utf8.char(i)] = i + offsetTwo;
  end

  return lettersList;
end
