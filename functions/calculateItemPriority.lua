local function findRepeatItemBulk(rucksacks)
  local rucksacksContents = "";
  local rucksacksTable = {};
  local rucksacksContentsTable;
  local prev = nil;
  local repeats = {};

  for index, value in ipairs(rucksacks) do
    rucksacksContents = rucksacksContents .. value;
    table.insert(rucksacksTable, tablizeString(value));
  end
  rucksacksContentsTable = tablizeString(rucksacksContents);
  for index, value in ipairs(rucksacksContentsTable) do
    rucksacksContentsTable[index] = utf8.codepoint(value);
  end
  sort(rucksacksContentsTable);
  for index, value in ipairs(rucksacksContentsTable) do
    if value == prev then
      local containsValue = true;
      local i = 1;
      while containsValue and i <= #rucksacksTable do
        containsValue = arrayContainsValue(rucksacksTable[i], utf8.char(value));
        i = i + 1;
      end
      if containsValue then
        repeats[utf8.char(value)] = true;
      end
    end
    prev = value;
  end

  return repeats
end

local function calculateItemPriority(items)
  local priorities = {};

  for key, value in pairs(items) do
    table.insert(priorities, lettersKey[key]);
  end

  return sumArray(priorities);
end

function calculateItemsPriority(rucksacks)
  local itemPriorities = 0;

  for i = 1, #rucksacks, 3 do
    local repeatItems = findRepeatItemBulk(slice(rucksacks, i, i + 2));
    itemPriorities = itemPriorities + calculateItemPriority(repeatItems);
  end

  return itemPriorities
end
