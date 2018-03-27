# Recursive Binomial Coefficients

Compute the binomial coefficients C(n, k) defined by the recursive formula

C(n) = 1                     for k = 0 or n = 0
     = C(n-1,k) + C(n-1,k-1) for 0 < k < n
     = 0                     otherwise

Write three different algorithms to compute binomial coefficients C(n, k).


Three algorithms that can be used to compute binomial coefficients using the given recursive formula are rather tricky to formulate. As a dynamic algorithm, only a bottom up approach was implemented, with the recursive formula also used in a classical recursive implementation. For the third algorithm, a separate algorithm was used similar to the one given in [a Math Stack Exchange answer](https://math.stackexchange.com/a/927064).

To compare all three implementations, the floor of n/2 was used as input for k, while n was increased linearly from 1 to 50. It was observed that the dynamic bottom-up approach was far more efficient than the other two implementations, with the classical recursive algorithm having exponential time complexity.
