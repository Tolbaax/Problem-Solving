class Solution12 {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    flowerbed.insert(0, 0);
    flowerbed.add(0);
    for (int i = 1; i < flowerbed.length - 1; i++) {
      if (flowerbed[i - 1] + flowerbed[i] + flowerbed[i + 1] == 0) {
        n--;
        i++;
      }
    }
    return n <= 0;
  }
}

/*
class Solution12 {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    int count = 0;
    for (int i = 0; i < flowerbed.length; i++) {
      // Check if the current plot is empty.
      if (flowerbed[i] == 0) {
        // Check if the left and right plots are empty.
        bool emptyLeftPlot = (i == 0) || (flowerbed[i - 1] == 0);
        bool emptyRightPlot = (i == flowerbed.length - 1) || (flowerbed[i + 1] == 0);

        // If both plots are empty, we can plant a flower here.
        if (emptyLeftPlot && emptyRightPlot) {
          flowerbed[i] = 1;
          count++;
        }
      }
    }
    return count >= n;
  }
}
 */
