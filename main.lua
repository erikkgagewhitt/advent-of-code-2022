require("functions/countCalories");
require("functions/calculateItemPriority");
require("functions/calculateRPS");
require("statics/rps");
require("statics/tables");
require("utils/arrayContainsValue");
require("utils/cloneTable");
require("utils/conglomerateArray");
require("utils/maxArray");
require("utils/mergeSort");
require("utils/readInput");
require("utils/slice");
require("utils/sumArray");
require("utils/tablizeString");
require("utils/wrapGetValue");

function main()
  local rucksacks = readInput("./inputs/rucksacks.txt", "l");
  local priority = calculateItemsPriority(rucksacks, 3);

  print(priority);
end

-- letters = letters();
lettersKey = lettersKey(-96, -38);
main();
