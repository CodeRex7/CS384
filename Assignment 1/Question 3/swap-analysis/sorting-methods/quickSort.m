function [iterations] = quickSort(inputArray)
  iterations = 0;
  [inputArray,iterations] = actualquickSort(inputArray,1,length(inputArray),iterations);
  return;
 end

 function [arr,iterations]=actualquickSort(arr,low,high,iterations)
       if low < high
         iterations++;
         [pi,arr,iterations] = partition(arr, low, high,iterations);
         [arr,iterations] = actualquickSort(arr, low, pi - 1,iterations);
         [arr,iterations] = actualquickSort(arr, pi + 1, high,iterations);
       end

 end
