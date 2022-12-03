function countCalories(caloriesArray, first, last)
  local conglomerate = conglomerateArray(caloriesArray, "sum");
  sort(conglomerate);
  local topCalories = slice(conglomerate, first, last);
  local calories = sumArray(topCalories);

  return calories;
end
