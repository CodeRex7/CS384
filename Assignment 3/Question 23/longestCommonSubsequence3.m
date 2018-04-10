function [] = longestCommonSubsequence3(x,y,z)
  subsequence = generateSubsequence(generateSubsequenceTable(x,y,z),x,length(x),length(y),length(z));
  subsequenceLength = length(subsequence);
  printf("%d (%s)\n",subsequenceLength,subsequence);
end
