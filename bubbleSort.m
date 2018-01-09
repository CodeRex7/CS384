%implementation and analysis of classical and modified bubble sort
%algorithms
function [swaps] = bubbleSort(x)
    %x = input(prompt);
    swaps = 0
    index = length(x);
    for i = 1:index
        %swaps = 0;
        for j = 1:index
            if x(j) < x(i)
                temp = x(j);
                x(j) = x(i);
                x(i) = temp;
                swaps = swaps + 1;
                
            end
            
        end
        x
    end
end



