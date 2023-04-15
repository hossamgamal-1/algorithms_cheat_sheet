List<int> bubleSort(List<int> list) {
  for (int i = list.length; i > 0; i--) {
    for (int j = 0; j < i - 1; j++) {
      if (list[j] > list[j + 1]) {
        //swapping
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
  return list;
}
