class Solution2 {
  List<int> topKFrequent(List<int> nums, int k) {
    final result = <int>[];
    final valueCount = {}; // value : occurrence
    final bucket = List.generate(nums.length + 1,(index) => <int>[]);

    for(int n in nums){
      valueCount[n] = 1 + (valueCount[n] ?? 0);
    }

    for(int k in valueCount.keys){
      bucket[valueCount[k]].add(k);
    }

    for(int i=bucket.length - 1 ; i>=0 ; i--){
      for(final n in bucket[i]){
        result.add(n);
        if(result.length == k) return result;
      }
    }
    return [];
  }
}
// ([1, 1, 1, 2, 2, 3, 3], 2)
