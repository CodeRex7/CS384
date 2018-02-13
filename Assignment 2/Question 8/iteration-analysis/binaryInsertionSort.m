function [iterations,arr] = binaryInsertionSort(arr, iterations=0)
  ind = length(arr);
  sorted = 1;
  while (sorted != ind)
    j = sorted+1;
    % iterations++;
    [iterations,toInsert] = binaryFind(arr,1, sorted, arr(j), iterations);
    while (j > toInsert)
      iterations++;
      % toInsert,j
      arr = swap(arr, j, --j);
    end
    sorted++;
  end
end

function [iterations, loc] = binaryFind(arr, left, right, insert, iterations)
  iterations++;
  if (right <= left)
    if (insert < arr(left))
      loc = left;
      return;
    else
      loc = left + 1;
      return;
    endif
  endif
  mid = ceil((left + right)/2);

  if(insert == arr(mid))
    loc = mid+1;
    return;
  elseif(insert > arr(mid))
    [iterations, loc] = binaryFind(arr, mid+1, right, insert, iterations);
  else
    [iterations, loc] = binaryFind(arr, left, mid-1, insert, iterations);
  endif
end

function [arr] = swap(arr, i, j)
  temp = arr(i);
  arr(i) = arr(j);
  arr(j) = temp;
end
