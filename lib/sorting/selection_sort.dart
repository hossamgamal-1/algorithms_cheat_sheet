List<int> selectionSort(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    int leastValueIndex = i;
    for (int j = i + 1; j < list.length; j++) {
      if (list[leastValueIndex] > list[j]) {
        leastValueIndex = j;
      }
    }
    //swapping
    if (leastValueIndex != i) {
      int temp = list[i];
      list[i] = list[leastValueIndex];
      list[leastValueIndex] = temp;
    }
  }
  return list;
}
