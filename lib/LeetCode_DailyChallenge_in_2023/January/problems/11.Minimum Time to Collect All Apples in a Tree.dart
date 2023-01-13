class Solution11 {
  int dfs(int nod, int par, List<List<int>> ad, List<bool> hasA) {
    int total = 0, chd = 0;
    for (int n in ad[nod]) {
      if (n == par) continue;
      chd = dfs(n, nod, ad, hasA);
      if (chd > 0 || hasA[n]) total += chd += 2;
    }
    return total;
  }

  int minTime(int n, List<List<int>> edges, List<bool> hasApple) {
    List<List<int>> adj = List.generate(n, (i) => [], growable: false);
    for (List<int> a in edges) {
      adj[a[0]].add(a[1]);
      adj[a[1]].add(a[0]);
    }

    return dfs(0, -1, adj, hasApple);
  }
}
