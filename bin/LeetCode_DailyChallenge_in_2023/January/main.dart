import 'package:problem_solving/LeetCode_DailyChallenge_in_2023/January/problems/7-Gas%20Station.dart';

import 'app.dart';

void main() {
  // Problem 1
  print('S1 : ${Solution1().wordPattern('abba', 'dog cat cat dog')}');

  // Problem 2
  print('S2 : ${Solution2().detectCapitalUse('WoRd')}');

  // Problem 3
  print('S3 : ${Solution3().minDeletionSize(["ass", "frs", "qws"])}');

  // Problem 4
  print('S4 : ${Solution4().minimumRounds([2, 2, 3, 3, 2, 4, 4, 4, 4, 4])}');

  // Problem 5
  print('S5 : ${Solution5().findMinArrowShots([[10,16],[2,8],[1,6],[7,12]])}');

  // Problem 6
  print('S6 : ${Solution6().maxIceCream([1, 3, 2, 4, 1], 7)}');

  // Problem 7
  print('S7 : ${Solution7().canCompleteCircuit([1, 2, 3, 4, 5], [3, 4, 5, 1, 2])}');
}
