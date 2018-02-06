function [iterations] = strassen(arr1,arr2)
	iterations = 0;
	[iterations,re] = actualStrassen(arr1,arr2,2);
	return;
end



function [iterations,re] = actualStrassen(arr1,arr2, iterations)
	%recursion till base case of 2x2 matrices being multiplied
	n = length(arr1);
	% nmin = 8;
	% if n ~= 2^( log2(n) )
	%    error('The matrix dimension must be a power of 2.')
	% end
	% iterations++;
	if n <= 2
	   re = arr1*arr2;
	   iterations++;
	else
	   m = n/2; i = 1:m; j = m+1:n;
	   [iterations,m1] = actualStrassen( arr1(i,i)+arr1(j,j), arr2(i,i)+arr2(j,j),iterations);
	   [iterations,m2] = actualStrassen( arr1(j,i)+arr1(j,j), arr2(i,i),         iterations);
	   [iterations,m3] = actualStrassen( arr1(i,i),           arr2(i,j)-arr2(j,j),iterations);
	   [iterations,m4] = actualStrassen( arr1(j,j),           arr2(j,i)-arr2(i,i),iterations);
	   [iterations,m5] = actualStrassen( arr1(i,i)+arr1(i,j), arr2(j,j),         iterations);
	   [iterations,m6] = actualStrassen( arr1(j,i)-arr1(i,i), arr2(i,i)+arr2(i,j),iterations);
	   [iterations,m7] = actualStrassen( arr1(i,j)-arr1(j,j), arr2(j,i)+arr2(j,j),iterations);
	   re = [ m1+m4-m5+m7  m3+m5;  m2+m4  m1+m3-m2+m6 ];
	endif
	% if n == 2
	% 	p1 = (arr1(1,1) + arr1(2,2)) * (arr2(1,1)) + arr2(2,2));
	% 	p2 = (arr1(2,1) + arr1(2,2)) * (arr2(1,1));
	% 	p3 = arr1(1,1) * (arr2(1,2) - arr2(2,2));
	% 	p4 = arr1(2,2) * (arr2(2,1) - arr2(1,1));
	% 	p5 = (arr1(1,1) + arr1(1,2)) * arr2(2,2);
	% 	p6 = (arr1(2,1) - arr1(1,1)) * (arr2(1,1) + arr2(1,2));
	% 	p7 = (arr1(1,2) - arr1(2,2)) * (arr2(2,1) + arr2(2,2));
	% 	re = cat(dim,re,[p1+p4-p5+p7 p3+p5; p2+p4 p1+p3-p2+p6]);
	% else 
	% 	m = n/2; i = 1; j = m+1;
	% 	re = strassen(1,arr1(i,m),arr2(m+1,n));
	% 	re = strassen(1,arr1(i,m),arr2(m+1,n));
	% 	re = strassen(2,arr1(i,m),arr2(m+1,n));
	% 	re = strassen(2,arr1(i,m),arr2(m+1,n));

	% end
end