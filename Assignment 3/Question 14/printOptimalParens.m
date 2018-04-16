function [] = printOptimalParens(s,i,j)
    if i == j
        printf(" A%d ",i);
    elseif
        printf("( ");
        printOptimalParens(s, i, s(i,j));
        printOptimalParens(s, s(i,j)+1 ,j);
        printf(" )");
    endif
end