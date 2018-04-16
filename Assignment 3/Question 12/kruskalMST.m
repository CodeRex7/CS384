%Use a table of edge weights and then sort the weights. Select the lowest weights while checking vertices already included.

function [MSTEdges] = kruskalMST(vertices, edgeWeights)
    numEdges = columns(edgeWeights)
    edgeWeights = edgeWeights';
    edgeWeights = sortrows(edgeWeights,2);
    verticesIncluded = [];
    MSTEdges = [];
    for i = 1:numEdges
        if ismember(edgeWeights(i,1),verticesIncluded)
            continue;
        else
            MSTEdges = [MSTEdges " " edgeWeights(i,1)];
            verticesIncluded = [verticesIncluded edgeWeights(i,1)];
        endif
    endfor
end