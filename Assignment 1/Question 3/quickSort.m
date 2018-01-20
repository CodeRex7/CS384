function [runningTime] = quickSort(inputArray)
  p = 1;
  r = length(inputArray);
  function index = partition(A, p ,r)
    x = A[r];
    i = p - 1;
    for j = p:r-1
      if A[j] <= x
        i = i + 1;
        temp = A[i];
        A[i] = A[j];
        A[j] = temp;
        end
        end
    temp = A[i+1];
    A[i + 1] = A[r];
    A[r] = temp;
    index = i + 1
    return;
    end
  if p < r
    q = partition(inputArray, p, r)
    quickSort(inputArray, p, q - 1);
    quickSort(inputArray, q + 1, r);