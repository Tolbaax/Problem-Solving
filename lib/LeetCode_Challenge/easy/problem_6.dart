class Solution6 {
  List<int> twoSum(List<int> nums, int target) {
    var mp = {};
    List<int> result = [];
    for (int i = 0; i < nums.length; i++) {
      if (mp.containsKey(target - nums[i])) {
        result.add(mp[target - nums[i]]!);
        result.add(i);
      }
      mp.putIfAbsent(nums[i], () => i);
    }
    return result;
  }
}



/**
class Solution6_ {
  List<int> twoSum(List<int> nums, int target) {
    List<int> result = [];
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          result.add(i);
          result.add(j);
          break;
        }
      }
    }
    return result;
  }
}
 */
