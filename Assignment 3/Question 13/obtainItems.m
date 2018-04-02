%This method traverses the array and generates the list of items in the knapsack.

function [knapsackItems] = obtainItems(knapsackTable,weights)
  i = rows(knapsackTable);
  j = columns(knapsackTable);
  knapsackItems = [];
  while (i > 2 && j > 2)
    if knapsackTable(i,j) != knapsackTable(i-1,j)
      knapsackItems = [knapsackItems i-1];
      i--;
      j = j - weights(i);
    else
      i--;
    endif
  end
end
