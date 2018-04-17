%Use a table of edge weights and then sort the weights. Select the lowest weights while checking vertices already included.

function [MSTEdges] = kruskalMST(edges, edgeWeights)
    numEdges = columns(edgeWeights);
    [edgeWeights,sortIdx] = sort(edgeWeights);
    sortedEdgeNames(sortIdx) = edges(:);
    verticesIncluded = "";
    MSTEdges = [];
    for i = 1:numEdges
        if ismember(cell2mat(sortedEdgeNames(i)),verticesIncluded)
            continue;
        else
            MSTEdges = [MSTEdges " " sortedEdgeNames(i)];
            verticesIncluded = [verticesIncluded cell2mat(sortedEdgeNames(i))];
        endif
    endfor
end
