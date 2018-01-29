function [runningTime] = insertionSort(inputArray)
  index = length(inputArray);
  %iterations = 0;
  timeInitial = tic;
  for i= 2:index
    j = i;
    while (j>1 && inputArray(j) < inputArray(j-1))
      temp = inputArray(j);
      inputArray(j) = inputArray(j-1);
      inputArray(j-1) = temp;
      j = j - 1;
      %iterations = iterations + 1;
    end
  end
  
  runningTime = toc(timeInitial);
  return;
end