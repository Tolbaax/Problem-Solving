class Solution4 {
  bool isSubsequence(String s, String t) {
    if (s.isEmpty) return true;

    int i = 0;
    int j = 0;

    while (j < t.length) {
      if (t.codeUnitAt(j) == s.codeUnitAt(i)) {
        i++;
        if (i == s.length) return true;
      }
      j++;
    }
    return false;
  }
}
