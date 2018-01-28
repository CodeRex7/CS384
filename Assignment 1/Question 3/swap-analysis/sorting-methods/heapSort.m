function [iterations] = heapSort(inputArray)
  % Build max-heap from x
  iterations=0;
  n = length(inputArray);
  [inputArray,iterations] = buildmaxheap(inputArray,n,iterations);


  % Heapsort
  heapsize = n;
  for i = n:-1:2
    iterations = iterations + 1;
    % Put (n + 1 - i)th largest element in place
    inputArray = swap(inputArray,1,i);

    % Max-heapify x(1:heapsize)
    heapsize = heapsize - 1;
    [inputArray,iterations] = maxheapify(inputArray,1,heapsize,iterations);
  end
  return;
end

function [x,iterations] = buildmaxheap(x,n,iterations)
  % Build max-heap out of x
  % Note: In practice, x xhould be passed by reference

  for i = floor(n / 2):-1:1
    iterations = iterations + 1;
    % Put children of x(i) in max-heap order
    [x,iterations] = maxheapify(x,i,n,iterations);
  end

end

function [x,iterations] = maxheapify(x,i,heapsize,iterations)
  % Put children of x(i) in max-heap order
  % Note: In practice, x xhould be passed by reference

  % Compute left/right children indices
  ll = 2 * i; % Note: In practice, use left bit shift
  rr = ll + 1; % Note: In practice, use left bit shift, then add 1 to LSB
  iterations = iterations + 1;
  % Max-heapify
  if ((ll <= heapsize) && (x(ll) > x(i)))
    largest = ll;
  else
    largest = i;
  end
  if ((rr <= heapsize) && (x(rr) > x(largest)))
    largest = rr;
  end
  if (largest ~= i)

    x = swap(x,i,largest);
    [x,iterations] = maxheapify(x,largest,heapsize,iterations);
  end
  return;
end

function x = swap(x,i,j)
  % Swap x(i) and x(j)
  % Note: In practice, x xhould be passed by reference

  val = x(i);
  x(i) = x(j);
  x(j) = val;

end
