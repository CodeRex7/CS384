function [runningTime] = quickSort(inputArray)
  timeInit = tic();
  [inputArray] = actualquickSort(inputArray,1,length(inputArray));
  runningTime = toc(timeInit);
  return;
 end

 function [arr]=actualquickSort(arr,low,high)
       if low < high
         %++;
         [pi,arr] = partition(arr, low, high);
         [arr] = actualquickSort(arr, low, pi - 1);
         [arr] = actualquickSort(arr, pi + 1, high);
       end

 end
