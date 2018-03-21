function [value] = bottomUpDynamic(n, k)
  value =
  lookupTable = [1]
end

function [lookupTable] = recursiveTableGen(lookupTable, n , k)
  lookupTable = horzcat(lookupTable, zeros(length(lookupTable(:,1))));
  appendRow = [1];
  for i=1:length(lookupTable(1,:))
    appendRow = vertcat(appendRow,[lookupTable(i-1,j-1) + lookupTable(i-1,j)];
  endfor
  lookupTable = vertcat;
end
