function [iterations] = insertionSort(x)
  index = length(x);
  iterations = 0;
  for i= 2:index
    j = i;
    while (j>1 && x(j) < x(j-1))
      temp = x(j);
      x(j) = x(j-1);
      x(j-1) = temp;
      j = j - 1;
      iterations = iterations + 1;
    end
  end
end
