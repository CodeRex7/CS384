function [runningTime] = bubbleSort(inputArray)
    %inputArray = input(prompt);
    %iterations = 0;
    timeInitial = tic;
    index = length(inputArray);
    for i = 1:index
        %swaps = 0;
        for j = i:index-1
            if inputArray(j) > inputArray(j+1)
                temp = inputArray(j);
                inputArray(j) = inputArray(j+1);
                inputArray(j+1) = temp;
            end
            %iterations = iterations + 1;
        end
    end
    
    runningTime = toc(timeInitial);
    return;
end