function [iterations] = quick3WP(input)
  iterations = 0;
  [arr,iterations] = actualquick3WP(input, 1, length(input),iterations);
  return;
end


function [arr,iterations] = actualquick3WP(arr,lo,hi,iterations)
  if (hi <= lo)
    return;
  endif

  lt = lo;
  gt = hi;
  v = arr(lo);
  i = lo + 1;

  while (i <= gt)
    iterations++;
     if (arr(i) < v)
       [arr,iterations] = swap(arr,lt,i,iterations);
       lt = lt + 1;
       i = i + 1;
     elseif (arr(i) > v)
       [arr,iterations] = swap(arr,gt,i,iterations);
       gt = gt - 1;
     else
       i = i + 1;
     endif
  endwhile
  iterations++;
  [arr,iterations] = actualquick3WP(arr, lo, lt-1,iterations);
  [arr,iterations] = actualquick3WP(arr, gt+1, hi,iterations);
  return;
end

function [x,iterations] = swap(x,i,j,iterations)
  %iterations++;
  val = x(i);
  x(i) = x(j);
  x(j) = val;
  return;
end
