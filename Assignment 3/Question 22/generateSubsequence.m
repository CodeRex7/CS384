function [subsequence] = generateSubsequence(subsequenceTable,x)
  subsequence = "";
  i = rows(subsequenceTable);
  j = columns(subsequenceTable);
  while (i>0 && j>0)
    if (i!=1 && j!=1)
      if (subsequenceTable(i,j) == subsequenceTable(i,j-1))
        j--;
      elseif (subsequenceTable(i,j) == subsequenceTable(i-1,j))
        i--;
      else
        subsequence = [x(i),subsequence];
        i--;
        j--;
      endif
    elseif (i==1 && j!=1)
      if subsequenceTable(i,j) == subsequenceTable(i,j-1)
        j--;
      else
        subsequence = [x(i),subsequence];
        i--;
        j--;
      endif
    elseif (i!=1 && j==1)
      if subsequenceTable(i,j) == subsequenceTable(i-1,j)
        j--;
      else
        subsequence = [x(i),subsequence];
        i--;
        j--;
      endif
    else
      if subsequenceTable(i,j) == 1
        subsequence = [x(i),subsequence];
        i--;
      else
        i--;
      endif
    endif
  endwhile
end
