require("functions/countCalories");
require("functions/calculateRPS")
require("statics/rps");
require("utils/conglomerateArray");
require("utils/maxArray");
require("utils/mergeSort");
require("utils/readInput");
require("utils/slice");
require("utils/sumArray");
require("utils/wrapGetValue");

function main()
  local rpsStrategyGuide = readInput("./inputs/rpsStrategyGuide.txt", "k", { ["count"] = false, ["replace"] = RPSChar });
  local rps = calculateRPS(rpsStrategyGuide);

  print(rps);
end

main();
