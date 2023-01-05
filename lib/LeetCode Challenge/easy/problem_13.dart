class Solution13 {
  int majorityElement(List<int> nums) {
    nums.sort();
    return nums[(nums.length / 2).floor()];
  }
}
