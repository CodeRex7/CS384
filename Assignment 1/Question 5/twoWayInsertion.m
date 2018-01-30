function [iterations] = twoWayInsertion(x,iterations)
  index = length(x);
  sorted = zeros(1,2*index + 1);
  middle = index + 1;
  sorted(index + 1) = x(1);
  iterations = 0;
  start = middle;
  stop = middle;
  for i= 2:index
    [sorted,start,middle,stop,iterations] = insert(sorted,x(i),start,middle,stop,iterations);
  end
  return;
end

%Checks insertion cases and inserts accordingly
function [arr,start,middle,stop,iterations] = insert(arr,x,start,middle,stop,iterations)
   if (x > arr(middle) && x > arr(stop))
      arr(++stop) = x;
      %iterations++;
      return;
   elseif (x < arr(middle) && x < arr(start))
      arr(--start) = x;
      %iterations++;
      return;
   elseif (x > arr(middle) && x < arr(stop))
      arr(++stop) = x;
      i = stop;
      while(arr(i) < arr(i - 1))
        iterations++;
        arr = swap (arr,i,i - 1);
        i--;
      end
      return;
   elseif (x < arr(middle) && x > arr(start))
      arr(--start) = x;
      i = start;
      while(arr(i) > arr(i + 1))
        iterations++;
        arr = swap (arr,i,i + 1);
        i++;
      end
      return;
   endif
end
    
function [arr] = swap(arr,i,j)
  temp = arr(i);
  arr(i) = arr(j);
  arr(j) = temp;
  return;
end