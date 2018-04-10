function [subsequence] = generateSubsequence(subsequenceTable,x,i,j,k)
  subsequence = "";
  % i = ;
  % j = ;
  % k = ;

  while (i>0 && j>0 && k>0)
    if (i!=1 && j!=1 && k!=1)
      if (subsequenceTable(i,j,k) == subsequenceTable(i,j-1,k))
        j--;
      elseif (subsequenceTable(i,j,k) == subsequenceTable(i-1,j,k-1))
        i--;
      elseif (subsequenceTable(i,j,k) == subsequenceTable(i,j,k-1))
        k--;
      else
        subsequence = [x(i),subsequence];
        i--;
        j--;
        k--;
      endif
    elseif (i==1 && j==1 && k!=1)
      if subsequenceTable(i,j,k) == subsequenceTable(i,j,k-1)
        k--;
        % elseif subsequenceTable(i,j,k) == subsequenceTable(i,j,k-1)
        %   k--;
      else
        subsequence = [x(i),subsequence];
        i--;
        j--;
        k--;
      endif
    elseif (j==1 && k==1 && i!=1)
      if subsequenceTable(i,j,k) == subsequenceTable(i-1,j,k)
        i--;
        % elseif subsequenceTable(i,j,k) == subsequenceTable(i,j,k-1)
        %   k--;
      else
        subsequence = [x(i),subsequence];
        i--;
        j--;
        k--;
      endif
    elseif (k==1 && i==1 && j!=1)
      if subsequenceTable(i,j,k) == subsequenceTable(i,j--,k)
        j--;
        % elseif subsequenceTable(i,j,k) == subsequenceTable(i,j-1,k)
        %   j--;
      else
        subsequence = [x(i),subsequence];
        i--;
        j--;
        k--;
      endif
    elseif subsequenceTable(i,j,k) == 1
      subsequence = [x(i),subsequence];
      i--;
      k--;
    else
      i--;
      k--;
    endif
  endwhile
end
