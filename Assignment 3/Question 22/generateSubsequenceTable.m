function [subsequenceTable] = generateSubsequenceTable(x,y)
  m = length(x);
  n = length(y);
  subsequenceTable = zeros(m,n);

  for i = 1:m
    for j = 1:n
      if x(i) == y(j)
        if (i==1 || j==1)
          subsequenceTable(i,j) = 1;
        else
          subsequenceTable(i,j) = 1 + subsequenceTable(i-1,j-1);
        endif
      else
        if i==1 && j==1
          subsequenceTable(i,j) = 0;
        elseif i==1 && j!=1
          subsequenceTable(i,j) = subsequenceTable(i,j-1);
        elseif j==1 && i!=1
          subsequenceTable(i,j) = subsequenceTable(i-1,j);
        else
          subsequenceTable(i,j) = max(subsequenceTable(i-1,j), subsequenceTable(i,j-1));
        endif
      endif
    endfor
  endfor
end

function [i,j] = incrementCounters(i,j)
  i++;
  j++;
  return;
end
