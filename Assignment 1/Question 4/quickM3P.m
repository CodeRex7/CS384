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
    [pp,iterations] = medianofthree(x,lo,hi,iterations);

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

function [pp,iterations] = medianofthree(x,lo,hi,iterations)
    % Middle element (avoiding overflow)
    mm = lo + floor((hi - lo) / 2);
    %iterations++;
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

function [x,iterations] = swap(x,i,j,iterations)
  %iterations++;
  val = x(i);
  x(i) = x(j);
  x(j) = val;
  return;
end
