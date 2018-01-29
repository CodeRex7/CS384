function [runningTime] = bubbleSort(x)
    %inputArray = input(prompt);
    %iterations = 0;
    timeInitial = tic;
    index = length(x);
    %iterations = 0;
    sorted = true;
    for i = 1:index
        sorted = true;
        for j = i:index-1
            if x(j) > x(j+1)
                temp = x(j);
                x(j) = x(j+1);
                x(j+1) = temp;
                sorted = false; 
            end
            %iterations = iterations + 1;
        end
        if sorted
          runningTime = toc(timeInitial);
          return;
        end
    end
end
