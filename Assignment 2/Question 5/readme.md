# Matrix Multiplication Analysis

Practical implementation of Strassens’s matrix multiplication algorithm  usually switch to the brute force method after matrix sizes become smaller than some crossover point. Run an experiment to determine such crossover point on your computer system.


Implementation notes:
Classical algorithm implemented. Padding ~~not~~ included. Upon performing swap analysis, the graph was not found to be of polynomial nature, hence a running time analysis was implemented. A clause was included to skip computations if a zero matrix is found, generating an appropriately sized zero matrix as the result. While this was found to reduce the number of multiplications slightly, the swap analysis graph's nature, especially where Strassen's algorithm takes more computations than the classical algorithm, is yet to be explained. A [similar graph was found on Stack Overflow](https://stackoverflow.com/questions/4304600/matrix-multiplication-strassen-vs-standard), yet no further explanation was found. To iron out inaccuracies, a [better implementation found on the MATLAB website](https://in.mathworks.com/matlabcentral/fileexchange/2360-the-matrix-computation-toolbox?focused=5041535&tab=function&requestedDomain=true) was used, which had a ~15% faster running time.

Upon further observation, it appears that the running time graph also does not generate a polynomial-like graph for Strassen's algorithm and we can clearly see that the trivial algorithm is relatively faster. This may imply that Strassen's matrix multiplication algorithm is not suitable for an implementation and instead may be useful for theoretical study only. However, when switching the crossover point to 8, Strassen's algorithm was unusually fast even for large input sizes.
