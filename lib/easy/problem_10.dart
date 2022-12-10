class Solution10 {
  int numUniqueEmails(List<String> emails) {
    Set<String> st = {};
    for (int i = 0; i < emails.length; i++) {
      String email = emails[i];
      String cleanEmail = '';
      for (int j = 0; j < email.length; j++) {
        if (email[j] == '.') {
          continue;
        } else if (email[j] == '+' || email[j] == '@') {
          break;
        }
        cleanEmail += email[j];
      }
      cleanEmail += email.substring(email.indexOf('g'), email.length);
      st.add(cleanEmail);
    }
    return st.length;
  }
}
