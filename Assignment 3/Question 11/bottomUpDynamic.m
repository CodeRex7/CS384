function [passes] = bottomUpDynamic(n, k)
  [lookupTable,passes] = tableGen([1],n,k);
  value = lookupTable(n,k)+lookupTable(n,k+1);
  return;
end

function [lookupTable,passes] = tableGen(lookupTable, n , k)
  passes = 0;
  for j = 1:n
      lookupTable = horzcat(lookupTable,zeros(rows(lookupTable),1));
      appendRow = [1];
      for i=2:k+1
        appendRow = horzcat(appendRow,[lookupTable(j,i-1) + lookupTable(j,i)]);
        passes++;
      endfor
      lookupTable = vertcat(lookupTable, appendRow);
  endfor
  return;
end
