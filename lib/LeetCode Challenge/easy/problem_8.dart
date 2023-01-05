class Solution8 {
  int removeElement(List<int> nums, int val) {
    int x = 0;
    for(int i in nums) {
      if(i != val) {
        nums[x] = nums[i];
        x++;
      }
    }
    return x;
  }
}