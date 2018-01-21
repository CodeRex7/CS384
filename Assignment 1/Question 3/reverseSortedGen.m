function [output] = reverseSortedGen(input)
  index = length(input);
    timeInitial = tic;
    for i = 1:index
        %swaps = 0;
        for j = i:index
            if input(j) > input(i)
                temp = input(j);
                input(j) = input(i);
                input(i) = temp;
            end
            %iterations = iterations + 1;
        end
    end
    
    output = input;
    return;
end