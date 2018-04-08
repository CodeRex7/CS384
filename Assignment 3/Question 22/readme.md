# Longest Common Subsequence

The longest common subsequence problem is given two sequences, A and B, find the longest sequence that is a subsequence of both of them. This can be done by an O(nm) dynamic programming algorithm. The basic algorithm requires O(nm) space to find the subsequence. This can be prohibitive if n and m are large (note that space is a bigger constraint than time). 
1.Implement an O(nm) algorithm for finding the longest common subsequence of a pair of sequences. Your algorithm should identify the longest common subsequence (and not just give its length). Your algorithm may use O(nm) space.
2.Implement an O(nm) time, O(n+m) space algorithm that finds the length of the longest common subsequence
Test Input Sets
Test your program on the following sets of input data.

Input Set 1
String1:	ATCCGACAAC
String2:	ATCGCATCTT
Output:	7 (ATCGCAC)

Input Set 2
String1:	AACGTTCOGMA
String2:	GGATACCASAT
Output:	errors in String1 (aacgttcOgMa)
	error in String 2 (ggataccaSat)

Input Set 3
String1:	AAAATTTT
String2:	TAAATG
Output:	4 (AAAT)

Input Set 4
String1:	TAGTAGTAGTAGTAGTAG
String2:	CATCATCATCATCA
Output:	8 (ATATATAT)  or  8 (CACACACA)

Input Set 5 (extra credit)
Use your program to determine which of the following DNA sequences are most similar.  This input set is to simulate a real genetic experiment.  In a real experiment there could be many species, each DNA sequence thousands of characters long.  
String1:  GTCACTTCACGGGTACAGACTTAAACG
String2:  ACCATTACGGCGATACCAGGATAC
String3:  TTTTATTTAGGACAGACTAGACCAGGT
String4:  CCGTAGATCGATACGATACCCACCTCAGG
String5:  CCGTAGATCGATACGATACCCACCTCAGG
