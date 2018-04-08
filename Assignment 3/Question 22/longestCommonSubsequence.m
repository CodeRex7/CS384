function [] = longestCommonSubsequence(x,y)
  subsequence = generateSubsequence(generateSubsequenceTable(x,y),x);
  subsequenceLength = length(subsequence);
  printf("%d (%s)\n",subsequenceLength,subsequence);
end
