# Matrix Multiplication Analysis

Practical implementation of Strassens’s matrix multiplication algorithm  usually switch to the brute force method after matrix sizes become smaller than some crossover point. Run an experiment to determine such crossover point on your computer system.


Notes: The different implementations have been sorted into different folders for sake of clarity. Each folder has its own main implementation, which was modified for different test cases, namely padded and non-padded input. Graphs have been sorted into their own folders.

##Non Padded Input Analysis

Non padded input must be a power of 2 for the analysis to be viable as Strassen's algorithm is unable to handle recursive subproblems that do not divide evenly. Analysis of multiplications done yielded an expected graph of polynomial nature where Strassen's method proved to be more and more efficient as the input size increased.

The same was observed when switching to analysis of running time, while using [a better implementation found on the MATLAB website, by Nick Higham](https://in.mathworks.com/matlabcentral/fileexchange/2360-the-matrix-computation-toolbox?focused=5041535&tab=function&requestedDomain=true) as a reference.


##Padded Input Analysis

As input was padded, this allowed for randomised sizes.  A clause was included to skip computations if a zero matrix is found, generating an appropriately sized zero matrix as the result, which reduced the number of multiplications slightly. However, multiplication analysis yielded an unexpected non-polynomial graph where occasionally, Strassen's algorithm had more computations than the classical algorithm. A [similar graph was found on Stack Overflow](https://stackoverflow.com/questions/4304600/matrix-multiplication-strassen-vs-standard), yet no further explanation was found. A reason for this is yet to be determined.

A running time analysis also yielded very unexpected (non-polynomial) results where Strassen's algorithm took significantly more time than the classical approach. To iron out inaccuracies, Nick's implementation was used, which had a ~15% faster running time yet still did not yield the polynomial graph. For further experimentation, Nick's original crossover point of 8 was used. This yielded unusually fast results, appearing to be of O(log(n)) instead of the expected polynomial nature. This implied that the logical flow of my implementation was unoptimised and hindered the running time of the program.


##Conclusion

Overall this experiment implies that while Strassen's algorithm for matrix multiplication is theoretically faster, implementation details of both the algorithm and the language itself and memory management techniques strongly affect the way the algorithm performs. It can be safely concluded that Strassen's method yields no significant improvement in a real world scenario for small input sizes.
