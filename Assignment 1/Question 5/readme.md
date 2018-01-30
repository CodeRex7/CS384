# Question 5

The two way insertion sort is a modification of the classical insertion sort. A separate output array of size 2n+1 is set aside. Initially the first element is placed into the middle  of the “sorted” array. Insertion on either end is continued until an insertion in between a pair must be done. As before shifting must be performed, but unlike before, shifting can be done in any direction since there is additional room on both sides of the array. Compare the performance of two way insertion sort with quick sort.


I have implemented Two Way Insertion Sort using a series of conditions. These reflect the different insertion possibilites, namely at the beginning, at the end, between the beginning and the middle, and between the end and the middle. Insertion is trivial for the first two cases, while shifting has been implemented for the latter two. The element is added at the nearest end and is then swapped into position using a `while` loop.

The graph seems slightly erroneous for some reason, which I shall analyse further at some point of time. Also, the implementation makes use of the quick sort algorithm previously implemented in [Question 3](../Question 3/swap-analysis/sorting-methods/).
