%Three border cases where n = 0, k = 0 , or n = k

function [passes,value] = binomialRecursiveSubtract(n,k)
  global passes;
  passes=0;

  [value] = recursiveSubtract(n,k);
  return;
end

function [value] = recursiveSubtract(n,k,value=0)
  global passes;
  passes++;

  if (n==0) || (k==0) || (n == k)
    value = 1;
  elseif (k < n)
    value = n/k * recursiveSubtract(n-1,k-1);
  endif
  return;
end
