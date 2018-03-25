function [passes] = bottomUpDynamic(n, k)
  n++; k++;
  [lookupTable,passes] = tableGen(n,k);
  value = lookupTable(n-1,k-1)+lookupTable(n-1,k);
  return;
end

function [lookupTable,passes] = tableGen(n,k)
  passes = 0;
  lookupTable = zeros(n-1,k);
  lookupTable(1,1) = lookupTable(2,2) = lookupTable(2,1) = lookupTable(3,3) = lookupTable(3,1) = 1;
  lookupTable(3,2) = 2;
  for j = 3:n-1
      lookupTable(j,1)=1;
      for i=2:k
        lookupTable(j,i) = lookupTable(j-1,i-1) + lookupTable(j-1,i);
        passes++;
      endfor
  endfor
  return;
end
