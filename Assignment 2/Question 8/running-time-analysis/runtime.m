function [value] = calculateRT(func, inp)
  value = zeros(1,10);
  for i = 1:10
    for j = 0:10
      value(i) = value(i) + func(inp);
