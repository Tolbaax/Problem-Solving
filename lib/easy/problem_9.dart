class Solution9 {
  List<List<int>> generate(int numRows) {
    List<List<int>> result = [];
    List<int> prev = [];
    for (int i = 1; i <= numRows; i++) {
      List<int> row = [];
      for (int j = 1; j <= i; j++) {
        if (j == 1 || j == i) {
          row.add(1);
        } else {
          row.add(prev[j - 1] + prev[j - 2]);
        }
      }
      result.add(row);
      prev = row;
    }
    return result;
  }
}

/*
Two loops, one go through the row, one go through the column
database: pretty straight forward, []
calculate element value: K(i)(j)=K(i-1)(j-1)+K(i-1)(j) except for the first and last element
 */

/*
==> Runtime 394 ms <==
class Solution9 {
  List<List<int>> generate(int numRows) {
      List<List<int>> result = [];
    for (int i = 0; i < numRows; i++) {
      List<int> row = [];
      for (int j = 0; j < i + 1; j++) {
        if (j == 0 || j == i) {
          row.add(1);
        } else {
          row.add(result[i - 1][j - 1] + result[i - 1][j]);
        }
      }
      result.add(row);
    }
    return result;
  }
}
 */
