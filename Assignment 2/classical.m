function [iterations] = classical(arr1,arr2)
 %output array dimensions
 %R1xC1 R2xC2 gives R1xC2
 rowNum = rows(arr1);
 colNum = columns(arr2);
 c = zeros(rowNum,colNum);
 n = rows(arr2);
 iterations = 0;
 for i = 1:colNum
 	for j = 1:rowNum
 		c(i,j) = 0;
 		for k = 1:n
 			
 			c(i,j) = c(i,j) + arr1(i,k)*arr2(k,j);
 			iterations++;
 		endfor
 	endfor
 endfor
 c
 return;
end