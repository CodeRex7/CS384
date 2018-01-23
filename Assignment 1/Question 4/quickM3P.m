function iterations = quickM3P(x)
    iterations = 0;
    n = length(x);
    [x,iterations] = quicksorti(x,1,n,iterations);
end

function [x,iterations] = quicksorti(x,lo,hi,iterations)
    iterations++;
    if(lo<hi)
        [x,pivot,iterations] = partition(x,lo,hi,iterations);
        [x,iterations] = quicksorti(x,lo,pivot - 1,iterations);
        [x,iterations] = quicksorti(x,pivot + 1,hi,iterations);
    end
end

function [x,pivot,iterations] = partition(x,lo,hi,iterations)
    % Median of three pivot index
    pp = medianofthree(x,lo,hi);

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

function pp = medianofthree(x,lo,hi)
    % Middle element (avoiding overflow)
    mm = lo + floor((hi - lo) / 2);

    % Compute median of {x(lo),x(mm),x(hi)}
    if (x(lo) <= x(mm))
        if (x(hi) >= x(mm))
            pp = mm;
        elseif (x(hi) >= x(lo))
            pp = hi;
        else
            pp = lo;
        end
    else
        if (x(hi) >= x(lo))
            pp = lo;
        elseif (x(hi) >= x(mm))
            pp = hi;
        else
            pp = mm;
        end
    endif
  end

function x = swap(x,i,j)
  val = x(i);
  x(i) = x(j);
  x(j) = val;
end
