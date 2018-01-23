function [output] = almostSortedInput(input)
    start = ceil(rand(1,1)*0.15*length(input));
    stop = ceil(rand(1,1)*0.15*length(input));
    output = actual(input,start,length(input)-stop);
    return;
end



function input = actual(input,low,high)
    if low < high
       [pi,input] = partition(input, low, high);
       input = actual(input, low, pi - 1); 
       input = actual(input, pi + 1, high);
    end
end