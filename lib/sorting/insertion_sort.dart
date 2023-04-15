List<int> insertionSort(List<int> list) {
  for (int i = 0; i < list.length - 1; i++) {
    for (int j = i + 1; j > 0; j--) {
      if (list[j - 1] > list[j]) {
        //swapping
        int temp = list[j - 1];
        list[j - 1] = list[j];
        list[j] = temp;
      } else {
        break;
      }
    }
  }
  return list;
}
