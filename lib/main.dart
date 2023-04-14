import 'dart:math';

main() {
  List<int> unsortedList = [90, 87, 48, 13, 28, 45, 91, 54, 6, 38, 60, 32, 20];
  // linearSearch(unsortedList, 54);
  // binarySearch(unsortedList, 54);
  // customNaiveSearch('This is a dummy text', 'dummy');
  // bubleSort(unsortedList);
  selectionSort(unsortedList);
}

int linearSearch(List<int> list, int value) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == value) {
      return i;
    }
  }
  return -1;
}

int binarySearch(List<int> sortedList, int value) {
  int leftBoundry = 0;
  int rightBoundry = sortedList.length - 1;
  int middle = (leftBoundry + rightBoundry) ~/ 2;

  for (int i = 0; i < log(sortedList.length) / log(2); i++) {
    if (sortedList[middle] == value) return middle;
    if (sortedList[middle] < value) leftBoundry = middle + 1;
    if (sortedList[middle] > value) rightBoundry = middle - 1;
    middle = (leftBoundry + rightBoundry) ~/ 2;
  }
  return -1;
}

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
