# Question 4

Compare the performance of variants of the quick sort algorithm for n=10 ... 1000. Use the results of Question 3 and accordingly modify your implementation of the quick sort algorithm. Repeat the experiment for 50 iterations and record the same set of statistics and compare the results for the two different sorting techniques.


I highly recommend reading through [Sedgewick's introduction to quick sort and its variants](https://algs4.cs.princeton.edu/23quicksort/) as I have used it as a reference. He has also studied quick sort extensively and has provided amazing problems on his course page should one wish to dive deeper.

Classical quick sort is implemented as a base, where the pivot is the last element of the input array. The variants implemented are:

3-Way Partitioning: Sedgewick suggested using multiple pivots as a faster technique (multiquicksort). However this method does not yield any significant gains with more than 3 partitions. This is similar in logic to E.W. Djikstra’s [Dutch National Flag problem](https://en.wikipedia.org/wiki/Dutch_national_flag_problem).

Median of 3 Partitioning: Another reasonable increase can be obtained by using a better choice for pivot. This is done by taking the first, the middle and the last element of the input array and choosing the median of the three as input.

Modified Median of 3 Partitioning: This is a modification of the method above where insertion sort is used for sub-arrays of size less than 12. This is a very popular method.
