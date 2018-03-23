function [value] = bottomUpDynamic(n, k)
  lookupTable = TableGen([1],n,k);
  value = lookupTable(n,k)+lookupTable(n,k+1);
end

function [lookupTable] = TableGen(lookupTable, n , k)
  
  for j = 1:n+1
      lookupTable = horzcat(lookupTable,zeros(rows(lookupTable)));
      appendRow = [1];
      for i=2:length(lookupTable(1,:))
        appendRow = horzcat(appendRow,[lookupTable(j,i-1) + lookupTable(j,i)]);
      endfor
      lookupTable = vertcat(lookupTable, appendRow);
  endfor
  return;
end
