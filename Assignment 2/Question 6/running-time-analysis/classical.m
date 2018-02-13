function [runningTime] = classical(arr1,arr2)
  % calculates running time of matrix multiplication via classical algorithm
  timeInit = tic();
  [result] = computeClassical(arr1,arr2);
  runningTime = toc(timeInit);
  return
end


function [c] = computeClassical(arr1,arr2)
  %output array dimensions
  %R1xC1 R2xC2 gives R1xC2
  rowNum = rows(arr1);
  colNum = columns(arr2);
  c = zeros(rowNum,colNum);
  n = rows(arr2);
  for i = 1:colNum
    for j = 1:rowNum
      c(i,j) = 0;
      for k = 1:n
        c(i,j) = c(i,j) + arr1(i,k)*arr2(k,j);
      endfor
    endfor
  endfor
  return;
end
