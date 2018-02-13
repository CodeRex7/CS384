function [runningTime] = insertionSort(x)
  timeInit = tic();
  index = length(x);
  for i= 2:index
    j = i;
    while (j>1 && x(j) < x(j-1))
      temp = x(j);
      x(j) = x(j-1);
      x(j-1) = temp;
      j = j - 1;
    end
  end
  runningTime = toc(timeInit);
end
