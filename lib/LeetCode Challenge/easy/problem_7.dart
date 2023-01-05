class Solution7 {
  String longestCommonPrefix(List<String> strs) {
    int n = strs.length;
    if (n == 0) return '';
    String ans = '';
    strs.sort();
    String first = strs[0];
    String last = strs[n - 1];

    for (int i = 0; i < first.length; i++) {
      if (first[i] == last[i]) {
        ans = ans + first[i];
      } else {
        break;
      }
    }

    return ans;
  }
}

/*
1. We first sort the array of strings.
2. Then, we choose the first and last string in the array => [They are supposed to be the most different among all the pairs of strings in the sorted array]
3. We just compare how many common characters match from index i = 0 of these two strings.
 */

/**
    class Solution7 {
    String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return '';
    if (strs.length == 1) return strs[0];
    strs.sort();
    String first = strs[0].split('').join().toString();
    String last = strs[strs.length - 1].split('').join().toString();
    int i = 0;
    while (i < strs[0].length && first[i] == last[i]) {
    i++;
    }

    return strs[0].substring(0, i);
    }
    }
 */
