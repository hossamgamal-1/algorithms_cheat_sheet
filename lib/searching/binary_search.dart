import 'dart:math';

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
