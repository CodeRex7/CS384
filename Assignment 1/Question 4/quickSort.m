function iterations = quickSort(x)
    iterations = 0;
    n = length(x);
    [x,iterations] = actualquickSort(x,1,n,iterations);
end

function [x,iterations] = actualquickSort(x,lo,hi,iterations)
    iterations++;
    if(lo<hi)
        [x,pivot,iterations] = partition(x,lo,hi,iterations);
        [x,iterations] = actualquickSort(x,lo,pivot - 1,iterations);
        [x,iterations] = actualquickSort(x,pivot + 1,hi,iterations);
    end
end

function [x,pivot,iterations] = partition(x,lo,hi,iterations)
    pp = hi;

    % Partition around pivot
    [x,iterations] = swap(x,lo,pp,iterations);
    pivot = lo;
    for j = (lo + 1):hi
      iterations++;
        if (x(j) < x(lo))
            pivot = pivot + 1;
            [x,iterations] = swap(x,pivot,j,iterations);
        end
    end
    [x,iterations] = swap(x,lo,pivot,iterations);
end

function [x,iterations] = swap(x,i,j,iterations)
  % iterations++;
  val = x(i);
  x(i) = x(j);
  x(j) = val;
  return;
end
