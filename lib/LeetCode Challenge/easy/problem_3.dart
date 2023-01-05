import 'dart:math';

class Solution3 {
  List<int> replaceElements(List<int> arr) {
    int mx = -1;
    for (int i = arr.length - 1; i >= 0; i--) {
      int n = arr[i];
      arr[i] = mx;
      mx = max(n, mx);
    }
    return arr;
  }
}

/*
Explanation

Iterate from the back to the start,
We initialize mx = -1, where mx represent the max on the right.
Each round, we set arr[i] = mx, where mx is its max on the right.
Also we update mx = max(mx, arr[i]), where arr[i] is the original value.
 */
