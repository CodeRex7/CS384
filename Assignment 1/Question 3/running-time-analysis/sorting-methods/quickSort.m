function [runningTime]=quickSort(inputArray)
  timeInitial=tic;
  actualquickSort(inputArray,1,length(inputArray));
  runningTime=toc(timeInitial);
  return;
 end
  
 function [arr]=actualquickSort(arr,low,high)
       if low < high
       [pi,arr] = partition(arr, low, high);
       arr = actualquickSort(arr, low, pi - 1); 
       arr = actualquickSort(arr, pi + 1, high);
       end
       
 end