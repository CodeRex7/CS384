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
    x = swap(x,lo,pp);
    pivot = lo;
    for j = (lo + 1):hi
      iterations++;
        if (x(j) < x(lo))
            pivot = pivot + 1;
            x = swap(x,pivot,j);
        end
    end
    x = swap(x,lo,pivot);
end

function x = swap(x,i,j)
  val = x(i);
  x(i) = x(j);
  x(j) = val;
end
