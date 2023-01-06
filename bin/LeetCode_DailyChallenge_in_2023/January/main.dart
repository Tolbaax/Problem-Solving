
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
}
