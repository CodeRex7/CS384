# Question 3
Determine the asymptotic behaviour of at least 5 internal sorting algorithms for each of the following input variations:
1. Random data
2. Reverse Ordered Data
3. Almost Sorted Data
4. Highly Repetitive Data

Select a suitable number of elements for the analysis that supports your program.


As asymptotic behaviour can be described in various ways, I have ambitiously tried to implement as many solutions as possible. To run the code, all methods, including the methods for input generation must be placed within the same folder. They have been sorted into different folders for sake of clarity.

Note: Radix Sort has not been implemented and can be left out.

Issues:
1. The graphs are incorrect. See details below. Updating graphs now.
2. Running time analysis is not accurate enough to warrant usage, as the first value for each of the methods may be erroneous because of the way data is cached and fetched for execution. In the target implementation, the running time for a single sorting method should calculated at a time and the first value should be discarded. This can be achieved by passing the method's handle to a separate method used solely for calculation of the running time.
3. ~~The iteration counter has been placed at the wrong point in certain sorting methods. This will be fixed in a future update.~~ The iteration counters have been updated. Updated graphs to follow soon.
