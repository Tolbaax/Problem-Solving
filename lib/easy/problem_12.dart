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
