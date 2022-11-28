class Solution1 {
  bool containsDuplicate(List<int> nums) {
    // Create set to store integers
    Set<int> intSet = {};

    // Iterate over each element
    for(int i in nums){
      // Check the number in hashset
      if(intSet.contains(i)){
        return true;
      }
      // Add number to hashset
      intSet.add(i);
    }
    return false;
  }
}
