function [runningTime]=quickSort(inputArray)
  timeInitial=tic;
  actualquickSort(inputArray,1,length(inputArray));
  runningTime=toc(timeInitial);
  return;
 end
  
 function []=actualquickSort(arr,low,high)
       if low < high
       pi = partition(arr, low, high);
       actualquickSort(arr, low, pi - 1); 
       actualquickSort(arr, pi + 1, high);
       end
       
 end