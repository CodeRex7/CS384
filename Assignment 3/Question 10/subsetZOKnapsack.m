%Implementation of 0-1 Knapsack Problem using Subset Paradigm
%


function [knapsackValue] = subsetZOKnapsack(itemList, weightList, valueList, maxWeight = 11)
  [knapsack,knapsackValue] = fillKnapsack(itemList, weightList, valueList,maxWeight);
end

function [knapsack,knapsackValue] = fillKnapsack(itemList, weightList, valueList, maxWeight)
  currentWeight = 0;
  knapsackValue = 0;
  knapsack = [];
  len = length(itemList);
  for counter = 1:len
    if (isFeasible(currentWeight,maxWeight,weightList(counter)))
      knapsack = cat(2,itemList(counter));
      knapsackValue += valueList(counter);
      currentWeight += weightList(counter);
      counter++;
    endif
  end
  return;
end

function [condition] = isFeasible(currentWeight,maxWeight,itemWeight)
  condition = currentWeight + itemWeight <= maxWeight;
  return;
end
