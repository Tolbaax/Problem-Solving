class Solution5 {
  int lengthOfLastWord(String s) {
    int len = 0;
    int tail = s.length - 1;
    for (int i = tail; i >= 0; i--) {
      if (len != 0 && s[i] == ' ') return len;
      if (s[i] == ' ') {
        continue;
      } else {
        len++;
      }
    }
    return len;
  }
}

/*
Explanation
Start from the tail of `s` and move backwards to find the first non_space character. Then
from this character,move backwards and count the number of non_space character until we
pass over the head of `s` or meet a space character. The count will then be length of the
last word.
 */
