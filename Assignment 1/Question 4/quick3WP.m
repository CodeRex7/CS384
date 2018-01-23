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
       temp = arr(lt);
       arr(lt) = arr(i);
       array(i) = temp;
       lt = lt + 1;
       i = i + 1;
     elseif (arr(i) > v)
       temp = arr(i);
       arr(i) = arr(gt);
       arr(gt) = arr(i);
       gt = gt - 1;
     else
       i = i + 1;
     endif
  endwhile
  iterations++;
  arr = actualquick3WP(arr, lo, lt-1,iterations);
  arr = actualquick3WP(arr, gt+1, hi,iterations);
  return;
end
