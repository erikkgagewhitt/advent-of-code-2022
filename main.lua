require("functions/calculateAssignments");
require("statics/rps");
require("statics/tables");
require("utils/arrayContainsValue");
require("utils/cloneTable");
require("utils/conglomerateArray");
require("utils/maxArray");
require("utils/mergeSort");
require("utils/readInput");
require("utils/slice");
require("utils/stringToArray");
require("utils/sumArray");
require("utils/wrapGetValue");

function main()
  local assignments = readInput("./inputs/assignments.txt", "l");
  local overlapCount = calculateAssignments(assignments);

  print(overlapCount);
end

-- letters = letters();
-- lettersKey = lettersKey(-96, -38);
main();
