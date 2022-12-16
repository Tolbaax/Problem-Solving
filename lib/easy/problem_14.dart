class Solution14 {
  List<int> findDisappearedNumbers(List<int> nums) {
    for (int i = 0; i < nums.length; i++) {
      while (nums[i] != i + 1 && nums[i] != nums[nums[i] - 1]) {
        int tmp = nums[i];
        nums[i] = nums[tmp - 1];
        nums[tmp - 1] = tmp;
      }
    }
    List<int> res = [];
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != i + 1) {
        res.add(i + 1);
      }
    }
    return res;
  }
}