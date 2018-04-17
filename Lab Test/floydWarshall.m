function [allPairShortestPaths] = floydWarshall(edgeWeights)
  n = rows(edgeWeights);
  allPairShortestPaths = Inf(n);

  %Initialise shortest path lengths to the original distance between edges
  for i = 1:n
    for j = 1:n
      allPairShortestPaths(i,j) = edgeWeights(i,j);
    endfor
    allPairShortestPaths(i,i) = 0;
  endfor

  %Compute shortest path from a vertex to another taking into account the other vertices
  for k = 1:n
    for i = 1:n
      for j = 1:n
        allPairShortestPaths(i,j) = min(allPairShortestPaths(i,j), allPairShortestPaths(i,k) + allPairShortestPaths(k,j));
      endfor
    endfor
  endfor
end
