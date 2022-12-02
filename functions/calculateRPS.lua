local function calculateScore(array)
  local raws = 0;
  local combinations = 0;

  for key, value in pairs(array) do
    local first = string.sub(key, 1, 1);
    local last = string.sub(key, 2, 2);

    raws = raws + (RPSVal[last] * value);
    combinations = combinations + (RPSRes[(RPSCombo[tostring(RPSVal[first] - RPSVal[last])])] * value)
  end


  return raws + combinations;
end

local function calculateRPSArray(array)
  local newArray = {};

  for index, value in ipairs(array) do
    local first = string.sub(value, 1, 1);
    local last = string.sub(value, 2, 2);
    local offset = RPSCalc[last];

    newArray[index] = value:gsub(last, wrapGetValue(RPSOpt, first, offset));
  end

  return conglomerateArray(newArray, "key");
end

function calculateRPS(array)
  local rpsArray = calculateRPSArray(array)
  return calculateScore(rpsArray)
end
