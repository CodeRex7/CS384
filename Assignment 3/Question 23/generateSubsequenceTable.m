function [subsequenceTable] = generateSubsequenceTable(x,y,z)
  l = length(x);
  m = length(y);
  n = length(z);
  subsequenceTable = zeros(l,m,n);
  for i = 1:l
    for j = 1:m
      for k = 1:n
        if x(i) == y(j) && x(i)== z(k)
          if (i==1 || j==1 || k==1)
            subsequenceTable(i,j,k) = 1;
          else
            subsequenceTable(i,j,k) = 1 + subsequenceTable(i-1,j-1,k-1);
          endif
        else
          if i==1 && j==1 && k==1
            subsequenceTable(i,j,k) = 0;
          elseif i==1 && k==1 && j!=1
            subsequenceTable(i,j,k) = subsequenceTable(i,j-1,k)%max(subsequenceTable(i,j-1,k),subsequenceTable(i,j,k-1));
          elseif j==1 && i==1 && k!=1
            subsequenceTable(i,j,k) = subsequenceTable(i,j,k-1)%max(subsequenceTable(i-1,j,k),subsequenceTable(i,j-1,k));
          elseif k==1 && j==1 && i!=1
            subsequenceTable(i,j,k) = subsequenceTable(i-1,j,k)%max(subsequenceTable(i-1,j,k),subsequenceTable(i,j,k-1));
          else
            subsequenceTable(i,j,k) = max(subsequenceTable(i,j-1,k), subsequenceTable(i,j,k-1), subsequenceTable(i-1,j,k));
          endif
        endif
      endfor
    endfor
  endfor
end

% function [j,k] = incrementCounters(j,k)
%   j++;
%   k++;
%   return;
% end
