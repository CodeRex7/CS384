# Recursive Binomial Coefficients

Compute the binomial coefficients C(n, k) defined by the recursive formula

C(n) = 1                     for k = 0 or n = 0
     = C(n-1,k) + C(n-1,k-1) for 0 < k < n
     = 0                     otherwise

Write three different algorithms to compute binomial coefficients C(n, k).


Three algorithms that can be used to compute binomial coefficients using the given recursive formula are rather tricky to formulate. As a dynamic algorithm, only a bottom up approach appeared, with the recursive formula also used in a classical recursive implementation. For the third algorithm, a separate algorithm was used similar to the one given in [a Math Stack Exchange answer](https://math.stackexchange.com/a/927064).
