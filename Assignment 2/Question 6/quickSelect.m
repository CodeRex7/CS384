% % This is basically a variant of quick sort where we stop sorting once the kth rank element is sorted
%
function [comparisons, arr, out] = quickSelect(arr,left = 1, right = length(arr),k = 3,comparisons = 0)
  if (left == right)
    comparisons++;
    out = arr(left);
    return;
  endif
  %median of 3 partitioning
  [pivot,comparisons] = medianofthree(arr, left, right, comparisons);
  [arr,pivot,comparisons] = partition(arr, left, right, pivot, comparisons);
  if k == pivot
    comparisons++;
    out = arr(k);
    return;
  %recurse into left subarray
  elseif k < pivot
    [comparisons, arr, out] = quickSelect(arr,left,pivot - 1,k,++comparisons);
    return;
  else
    [comparisons, arr, out] = quickSelect(arr,pivot + 1,right,k,++comparisons);
    return;
  endif
  arr
end

function [arr,storeIndex,comparisons] = partition(arr, left, right, pivot, comparisons)
  pivotValue = arr(pivot);
  arr = swap(arr, pivot, right);
  storeIndex = left;
  for i = left:right-1
    if (arr(i) > pivotValue)
      comparisons++;
      arr = swap(arr,storeIndex,i);
      storeIndex++;
    endif
  end
  arr = swap(arr,right,storeIndex);
  return;
end

function [pp,iterations] = medianofthree(arr,left,right,iterations)
    % Middle element (avoiding overfleftw)
    mm = left + floor((right - left) / 2);
    %iterations++;
    % Compute median of {arr(left),arr(mm),arr(right)}
    if (arr(left) <= arr(mm))
        if (arr(right) >= arr(mm))
            pp = mm;
        elseif (arr(right) >= arr(left))
            pp = right;
        else
            pp = left;
        end
    else
        if (arr(right) >= arr(left))
            pp = left;
        elseif (arr(right) >= arr(mm))
            pp = right;
        else
            pp = mm;
        end
    endif
  end

function [arr] = swap(arr,i,j)
  temp = arr(i);
  arr(i) = arr(j);
  arr(j) = temp;
  return;
end
