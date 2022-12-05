function calculateAssignments(assignments)
  local overlapCount = 0;

  for index, value in ipairs(assignments) do
    local splitAssignments = stringToArray(value, "%p");
    local rangeOne = splitAssignments[1] - splitAssignments[3];
    local rangeTwo = splitAssignments[2] - splitAssignments[4];
    local rangeThree = splitAssignments[1] - splitAssignments[4];
    local rangeFour = splitAssignments[2] - splitAssignments[3];

    if rangeOne == 0 or rangeTwo == 0 or rangeThree == 0 or rangeFour == 0 then
      overlapCount = overlapCount + 1;
    elseif rangeOne * rangeTwo < 0 or (rangeThree < 0 and rangeTwo > 0) or (rangeFour > 0 and rangeOne < 0) then
      overlapCount = overlapCount + 1;
    end
  end

  return overlapCount;
end
