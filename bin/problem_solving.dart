import 'app.dart';

void main() {
  // Problem 1
  print('S1 : ${Solution1().containsDuplicate([1, 2, 3, 3])}');

  // Problem 2
  print('S2 : ${Solution2().isAnagram('aback', 'ccac')}');

  // Problem 3
  print('S3 : ${Solution3().replaceElements([11, 18, 12, 1, 45, 6, 2])}');

  // Problem 4
  print('S4 : ${Solution4().isSubsequence('axc', 'acvst')}');

  // Problem 5
  print('S5 : ${Solution5().lengthOfLastWord('Hello World  ')}');

  // Problem 6
  print('S6 : ${Solution6().twoSum([1, 2, 3, 5, 6, 10], 9)}');

  // Problem 7
  print('S7 : ${Solution7().longestCommonPrefix(["flower", "flow", "flight"])}');

  // Problem 8
  print('S8 : ${Solution8().removeElement([3, 2, 2, 3], 3)}');

  // Problem 9
  print('S9 : ${Solution9().generate(4)}');

  // Problem 10
  print('S10 : ${Solution10().numUniqueEmails([
    'tolb.a@gmail.com',
    'tolba+a@gmail.com',
    'root@gmail.com',
  ])}');

  // Problem 11
  print('S11 : ${Solution11().isIsomorphic('ald', 'efg')}');

  // Problem 12
  print('S12 : ${Solution12().canPlaceFlowers([1, 0, 0, 0, 1, 0, 0, 1], 2)}');

  // Problem 13
  print('S13 : ${Solution13().majorityElement([1, 1, 2, 2, 1, 0, 4])}');
}