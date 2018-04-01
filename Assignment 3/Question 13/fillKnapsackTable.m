%This method generates the entire knapsack table. As array indices start from 1 in octave, the table has dimensions 1:n+1 and 1:k+1 instead of 0:n and 0:k

function [knapsackTable] = fillKnapsackTable(items, weights, vals)
  n = length(items) + 1;
  k = length(weights) + 1;
  knapsackTable = zeros(n,k);
  for i = 2:n
    for j = 2:k
      if weights(i-1) < j
        if weights(i) > j
          knapsackTable(i, j) = knapsackTable(i-1, j);
        else
            knapsackTable(i, j) = max(knapsackTable(i-1, j), knapsackTable(i-1, j-weights(i-1) + vals(i-1)));
        endif
      endif
    endfor
  endfor
  return;
end
