function [value] = recursive(n,k)
  if (n==0) || (k==0)
    value = 1;
  else if (k < n)
    value = recursive(n-1,k-1) + recursive(n-1,k);
end
