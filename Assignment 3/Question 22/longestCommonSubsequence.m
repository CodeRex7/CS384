function [subsequence] = longestCommonSubsequence(x,y)
  subsequence = generateSubsequence(generateSubsequenceTable(x,y),x);
end
