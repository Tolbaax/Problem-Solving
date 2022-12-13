class Solution11 {
  bool isIsomorphic(String s, String t) {
    Map<String, String> m1 = {};
    Map<String, String> m2 = {};
    for (int i = 0; i < s.length; i++) {
      if (m1[s[i]] != m2[t[i]]) return false;
      m1[s[i]] = t[i];
      m2[t[i]] = s[i];
    }
    return true;
  }
}
