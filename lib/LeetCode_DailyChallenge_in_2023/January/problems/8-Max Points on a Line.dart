import 'dart:math';

class Solution8 {
  int maxPoints(List<List<int>> points) {
    int n = points.length, ans = 1;
    if (n < 2) return n;
    for (int i = 0; i < n - 1; i++) {
      // to store our slope value
      Map<double, int> mp = {};
      for (int j = i + 1; j < n; j++) {
        if (i == j) continue;
        var dy = points[j][1] - points[i][1]; //y2 - y1
        var dx = points[j][0] - points[i][0]; //y2 - y1
        // convert both arguments to doubles.
        double x = atan2(dy, dx);
        mp[x] = (mp[x] ?? 0) + 1;
        ans = max(ans, mp[x]! + 1);
      }
    }
    return ans;
  }
}
