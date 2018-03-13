%Implementation of 0-1 Knapsack Problem using Ordering Paradigm
%A ratio list is calculated and sorted in descending order. Items are then added to the knapsack as feasible


function [knapsack] = orderingZOKnapsack(itemList, valueList, weightList, maxKnapsackWeight = 11)
  knapsack = [];
  currentKnapsackWeight = 0;
  ratioList = cat(2,itemList,valueList ./ weightList);
  ratioList = sort(ratioList,[-2]);
  %execute till knapsack full
  [knapsack,currentKnapsackWeight] = addToKnapsack(knapsack,valueList,maxKnapsackWeight);
end

function [knapsack,currentKnapsackWeight] = addToKnapsack(knapsack, itemList, maxKnapsackWeight)
end

function checkFeasible
end
