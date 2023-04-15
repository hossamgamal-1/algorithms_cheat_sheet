List<int> quickSort(List<int> list, [int start = 0, int end = -2]) {
  if (end == -2) end = list.length - 1;

  if (end > start) {
    int pivotIndex = _pivot(list, start, end);
    quickSort(list, start, pivotIndex - 1);
    quickSort(list, pivotIndex + 1, end);
  }

  return list;
}

int _pivot(List<int> list, [int start = 0, int end = -1]) {
  if (end == -1) end = list.length - 1;
  int leastSwapIndex = start;

  for (int i = start + 1; i < end + 1; i++) {
    if (list[start] > list[i]) {
      leastSwapIndex++;
      _swap(list, i, leastSwapIndex);
    }
  }
  _swap(list, start, leastSwapIndex);

  return leastSwapIndex;
}

void _swap(List<int> list, int index1, int index2) {
  int temp = list[index1];
  list[index1] = list[index2];
  list[index2] = temp;
}
