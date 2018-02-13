function [comparisons] = trivialSelect(arr, k = 3, comparisons = 0)
  index = length(arr);
  for i= 2:index
    j = i;
    while (j>1 && arr(j) < arr(j-1))
      comparisons++;
      temp = arr(j);
      arr(j) = arr(j-1);
      arr(j-1) = temp;
      j = j - 1;
    end
  end
end
