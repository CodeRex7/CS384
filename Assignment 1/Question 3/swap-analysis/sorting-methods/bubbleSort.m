function [iterations] = bubbleSort(x)
    %x = input(prompt);
    iterations = 0;
    index = length(x);
    for i = 1:index
        %swaps = 0;
        for j = i:index-1
            if x(j) > x(j+1)
                temp = x(j);
                x(j) = x(j+1);
                x(j+1) = temp;
            end
            iterations = iterations + 1;
        end
    end
    return;
end
