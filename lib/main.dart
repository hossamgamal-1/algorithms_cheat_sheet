import 'sorting/quick_sort.dart';

main() {
  List<int> unsortedList = [90, 87, 48, 13, 28, 45, 91, 54, 6, 38, 60, 32, 20];
  // print(linearSearch(unsortedList, 54));
  // print(binarySearch(unsortedList..sort(), 54));
  // print(customNaiveSearch('This is a dummy text', 'dummy'));
  // print(bubleSort(unsortedList));
  // print(selectionSort(unsortedList));
  // print(insertionSort(unsortedList));
  print(quickSort(unsortedList));
}
