function [comparisons, out, arr] = quickSelect(arr, left = 1, right = length(arr), n = 3, comparisons = 0)
  if left == right
    comparisons++;
    out = arr(left);
  endif
  pivotIndex = medianofthree(arr,left,right);
  [comparisons, pivotIndex, arr] = partition(arr, left, right, pivotIndex, comparisons);
  if (n == pivotIndex)
    comparisons++;
    out = arr(n);
    return;
  elseif (n < pivotIndex)
    [comparisons, out, arr] = quickSelect(arr, left, pivotIndex - 1, n, ++comparisons);
  else
    [comparisons, out, arr] = quickSelect(arr, pivotIndex + 1, right, n, ++comparisons);
  endif
end

function [comparisons, storeIndex, arr] = partition (arr, left, right, pivot, comparisons)
  pivotValue = arr(pivot);
  arr = swap(arr, pivot, right);
  storeIndex = left;
  for i = left : right-1
    if(arr(i) > pivotValue)
      comparisons++;
      arr = swap(arr,i,storeIndex);
      storeIndex++;
    endif
  end
  arr = swap(arr,right, storeIndex);
  return;
end

function [pivot] = medianofthree(arr,left,right)
    % Middle element (avoiding overflow)
    mm = left + floor((right - left) / 2);
    %iterations++;
    % Compute median of {arr(left),arr(mm),arr(right)}
    if (arr(left) <= arr(mm))
        if (arr(right) >= arr(mm))
            pivot = mm;
        elseif (arr(right) >= arr(left))
            pivot = right;
        else
            pivot = left;
        end
    else
        if (arr(right) >= arr(left))
            pivot = left;
        elseif (arr(right) >= arr(mm))
            pivot = right;
        else
            pivot = mm;
        end
    endif
end

function [arr] = swap (arr, i , j)
  temp = arr(i);
  arr(i) = arr(j);
  arr(j) = temp;
  return;
end
