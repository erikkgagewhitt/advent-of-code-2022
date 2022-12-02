function countCalories(caloriesArray, first, last)
  local conglomerate = conglomerateArray(caloriesArray, "sum");
  mergeSort(conglomerate, 1, #conglomerate);
  local topCalories = slice(conglomerate, first, last);
  local calories = sumArray(topCalories);

  return calories;
end
