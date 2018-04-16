%Dimensions are taken as input. Using a bottom-up approach, the costs for multiplying a particular chain are calculated, while the index of the optimal solution is stored separately to be used in a different function.

function [multCostTable, optimalIndexTable] = matrixMultTableGen(dims)
    n = length(dims)-1;
    multCostTable = zeros(n);
    optimalIndexTable = zeros(n-1,n);
    for l = 2:n
        for i = 1:n-l+1
            j = i + l - 1;
            multCostTable(i,j) = Inf;
            for k = i:j-1
                q = multCostTable(i,k) + multCostTable(k+1,j) + dims(i)*dims(k+1)*dims(j+1);
                if q < multCostTable(i,j)
                    multCostTable(i,j) = q;
                    optimalIndexTable(i,j) = k;
                endif
            endfor
        endfor
    endfor
end