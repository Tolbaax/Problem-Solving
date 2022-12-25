import 'dart:math';

class Solution3 {
  int longestConsecutive(List<int> nums) {
    Set st = nums.toSet();
    int mx = 0;
    for (int i = 0; i < nums.length; i++) {
      if (!st.contains(nums[i] - 1)) {
        int len = 1;
        while (st.contains(nums[i] + len)) {
          len++;
        }
        mx = max(mx, len);
      }
    }
    return mx;
  }
}
