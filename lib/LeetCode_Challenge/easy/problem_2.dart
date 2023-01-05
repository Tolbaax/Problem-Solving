class Solution2 {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;
    var counter = List<int>.filled(256, 0);
    int low = 0;
    int high = s.length - 1;
    var odd = s.length % 2 != 0;
    if (odd) {
      while (low < high) {
        counter[s.codeUnitAt(low)]++;
        counter[s.codeUnitAt(high)]++;
        counter[t.codeUnitAt(low)]--;
        counter[t.codeUnitAt(high)]--;
        low++;
        high--;
      }
      counter[s.codeUnitAt(s.length ~/ 2)]++;
      counter[t.codeUnitAt(s.length ~/ 2)]--;
    } else {
      while (low < high) {
        counter[s.codeUnitAt(low)]++;
        counter[s.codeUnitAt(high)]++;
        counter[t.codeUnitAt(low)]--;
        counter[t.codeUnitAt(high)]--;
        low++;
        high--;
      }
    }
    low = 0;
    high = counter.length - 1;
    while (low < high) {
      if (counter[low] != 0 || counter[high] != 0) return false;
      low++;
      high--;
    }
    return true;
  }
}

/*
 ``Hash Table`` => NOT Yet
 This idea uses hash table to record the times of appearances of each letter in th two
 Strings 's' and 't'. For each letter in 's' it increase the counter by 1 while for each
 letter in 't', it decreases the counter by 1. Finally, all the counters will be 0 if
 they two are anagrams of each others.
*/
