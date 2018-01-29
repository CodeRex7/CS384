function [iterations] = selectionSort(x)
    %x = input(prompt);
    iterations = 0;
    index = length(x);
    for i = 1:index
        %swaps = 0;
        for j = i:index
            if x(j) > x(i)
                temp = x(j);
                x(j) = x(i);
                x(i) = temp;
            end
            iterations = iterations + 1;
        end
    end
    return;
end
