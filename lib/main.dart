main() {
  List<int> unsortedList = [90, 87, 48, 13, 28, 45, 91, 54, 6, 38, 60, 32, 20];
  linearSearch(unsortedList, 54);
}

int linearSearch(List<int> list, int value) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == value) {
      return i;
    }
  }
  return -1;
}
