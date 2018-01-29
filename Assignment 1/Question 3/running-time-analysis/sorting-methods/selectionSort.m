function [runningTime] = selectionSort(inputArray)
    %x = input(prompt);
    %iterations = 0;
    index = length(inputArray);
    timeInitial = tic;
    for i = 1:index
        %swaps = 0;
        for j = i:index
            if inputArray(j) < inputArray(i)
                temp = inputArray(j);
                inputArray(j) = inputArray(i);
                inputArray(i) = temp;
            end
            %iterations = iterations + 1;
        end
    end
    
    runningTime = toc(timeInitial);
    return;
end