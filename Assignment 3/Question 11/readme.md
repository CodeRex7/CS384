# Recursive Binomial Coefficients

Compute the binomial coefficients C(n, k) defined by the recursive formula

C(n) = 1                     for k = 0 or n
     = C(n-1,k) + C(n-1,k-1) for 0 < k < n
     = 0                     otherwise

Write three different algorithms to compute binomial coefficients C(n, k).


Three algorithms that can be used to compute binomial coefficients using the given recursive formula are rather tricky to formulate. Two dynamic programming algorithms can be used, each following a different paradigm, namely Top Down and Bottom Up. The third was hence implemented as a simple recursive formula which had exponential running time.
