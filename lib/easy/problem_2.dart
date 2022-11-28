class Solution2 {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;
    for (int i = 0; i < s.length; i++) {
      if (s.contains(s[i]) != t.contains(s[i])) return false;
      if (s.contains(t[i]) != t.contains(t[i])) return false;
    }
    return true;
  }
}

/*
 ``Hash Table`` => not used
 This idea uses hash table to record the times of appearances of each letter in th two
 Strings 's' and 't'. For each letter in 's' it increase the counter by 1 while for each
 letter in 't', it decreases the counter by 1. Finally, all the counters will be 0 if
 they two are anagrams of each others.
*/
