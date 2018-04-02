function [knapsack]  = dynamicZOKnapsack(items, weights, vals, maxCapacity)
  knapsack = obtainItems(fillKnapsackTable(items, weights, vals, maxCapacity),weights);
end
