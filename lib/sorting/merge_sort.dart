List<int> mergeSort(List<int> unsortedList) {
  if (unsortedList.length <= 1) return unsortedList;
  int middle = unsortedList.length ~/ 2;

  List<int> leftList = mergeSort(unsortedList.sublist(0, middle));
  List<int> rightList = mergeSort(unsortedList.sublist(middle));

  return _merge(leftList, rightList);
}

List<int> _merge(List<int> listOne, List<int> listTwo) {
  List<int> result = [];
  int i = 0, j = 0;
  while (i < listOne.length && j < listTwo.length) {
    if (listOne[i] < listTwo[j]) {
      result.add(listOne[i]);
      i++;
    } else {
      result.add(listTwo[j]);
      j++;
    }
  }
  while (i < listOne.length) {
    result.add(listOne[i]);
    i++;
  }
  while (j < listTwo.length) {
    result.add(listTwo[j]);
    j++;
  }

  return result;
}
