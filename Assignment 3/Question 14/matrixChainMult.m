function [] = matrixChainMult(dims)
    [costTable,optimalIndexTable] = matrixMultTableGen(dims);
    printOptimalParens(optimalIndexTable,1,length(dims)-1);
    printf("\n");
end