class Solution15 {
  bool wordPattern(String pattern, String s) {
    List<String> words = s.split(' ');
    Map index = {};
    if (words.length != pattern.length) return false;
    for (int i = 0; i < words.length; i++) {
      if (index.putIfAbsent(pattern.indexOf(pattern[i]), () => i) !=
          index.putIfAbsent(words[i], () => i)) return false;
    }
    return true;
  }
}
