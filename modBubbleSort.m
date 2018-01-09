function [totalSwaps] = modBubbleSort(x)
    %x = input(prompt);
    index = length(x);
    totalSwaps = 0
    for i = 1:index
        for j = 1:index
            swaps = 0;
            if x(j) < x(i)
                temp = x(j);
                x(j) = x(i);
                x(i) = temp;
                swaps = swaps + 1;
                totalSwaps = totalSwaps + 1;
            end
        end
        if swaps == 0
            return;
        end
    end
end