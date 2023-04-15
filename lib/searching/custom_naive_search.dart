int customNaiveSearch(String text, String subText) {
  //naive search using window sliding
  if (subText.length > text.length) return -1;

  String test = '';
  for (int j = 0; j < subText.length; j++) {
    test += text[j];
  }
  for (int i = subText.length; i < text.length - subText.length; i++) {
    test = test.substring(1);
    test += text[i];
    if (test == subText) {
      return i - subText.length;
    }
  }
  return -1;
}
