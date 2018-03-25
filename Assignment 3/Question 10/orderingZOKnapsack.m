%Implementation of 0-1 Knapsack Problem using Ordering Paradigm
%A ratio list is calculated and sorted in descending order. Items are then added to the knapsack as feasible


function [knapsackValue] = orderingZOKnapsack(itemList, weightList, valueList, maxKnapsackWeight = 11)
  ratioList = cat(1,itemList,weightList,valueList,valueList ./ weightList);
  ratioList = transpose(ratioList);
  ratioList = sortrows(ratioList,[-4]);
  [knapsack] = fillKnapsack(ratioList,maxKnapsackWeight);
  knapsackValue = sum(knapsack(:,3));
end

function [knapsack] = fillKnapsack(ratioList, maxKnapsackWeight)
  currentKnapsackWeight = 0;
  knapsackValue = 0;
  knapsack = [];
  len = length(ratioList);
  for counter = 1:len
    if (isFeasible(currentKnapsackWeight,maxKnapsackWeight,ratioList(counter,2)))
      knapsack = cat(2,ratioList(counter));
      currentKnapsackWeight += ratioList(counter,2);
    endif
  end
  return;
end

function [condition] = isFeasible(currentKnapsackWeight,maxKnapsackWeight,itemWeight)
  condition = currentKnapsackWeight + itemWeight <= maxKnapsackWeight;
  return;
end
