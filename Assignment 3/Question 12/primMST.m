%Accept input as list of vertices and array of edge weights? Yep
%Keep a vertices-traversed array and compare it with the original vertices list
function [MSTEdges] = primMST(verticesList, edgeWeights)

    numVertices = length(verticesList);
    verticesIncluded = [verticesList(1)];
    MSTEdges = [];
    ind = 1;

    %All vertices have undefined length to themselves. Makes min finding easier.
    for i = 1:numVertices
        edgeWeights(i,i) = NaN;
    endfor

    %While all the vertices haven't been included, add the lowest cost edge to the tree from one vertice to the remaining vertices. Include the corresponding vertices in the "included" list.
    while ind < numVertices
        [edge,edgeStart,edgeEnd] = minValue(edgeWeights(1:ind,:));
        edgeWeights(edgeStart,edgeEnd) = edgeWeights(edgeEnd,edgeStart) = Inf;
        MSTEdges = [MSTEdges verticesList(edgeStart) verticesList(edgeEnd) " "];
        verticesIncluded = [verticesIncluded " " verticesList(edgeEnd)];
        ind++;
    endwhile

end

%Create min function to return corresponding minimum value and index from array. Library min produces required behavior, but is complex to execute/understand. 
function [minValue,minRow,minColumn] = minValue(arrayInput)
    arrayRows = rows(arrayInput);
    minValue = Inf;
    for i = 1:arrayRows
        if minValue > min(arrayInput(i,:))
            [minValue,minColumn] = min(arrayInput(i,:));
            minRow = i;
        endif
    endfor
end