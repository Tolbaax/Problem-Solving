class Solution11 {
  bool isIsomorphic(String s, String t) {
    if (s.length <= 1) return true;
    Map<String, String> mp1 = {};
    Map<String, String> mp2 = {};
    for (int i = 0; i < s.length; i++) {
      if (mp1[s[i]] != null && mp1[s[i]] != t[i] ||
          mp2[t[i]] != null && mp2[t[i]] != s[i]) {
        return false;
      }
      mp1[s[i]] = t[i];
      mp2[t[i]] = s[i];
    }
    return true;
  }
}
