class Solution1 {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String, List<String>> map = {};
    for (var s in strs) {
      List<String> tmp = s.split('');
      tmp.sort((a, b) => a.compareTo(b));
      String join = tmp.join('');
      //check is it contains map
      if (map.containsKey(join)) {
        map[join]!.add(s);
      } else {
        map[join] = [s];
      }
    }

    return map.values.toList();
  }
}
//['abt', 'tba', 'cvf', 'fvc', 'bat', 'too']
