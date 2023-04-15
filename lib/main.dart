import 'data_structures/stack.dart';
import 'sorting/quick_sort.dart';

main() {
  List<int> unsortedList = [90, 87, 48, 13, 28, 45, 91, 54, 6, 38, 60, 32, 20];
  print(quickSort(unsortedList));
  Stack<int> stack = Stack<int>();
  stack.push(7);
  stack.push(9);
  stack.push(12);

  stack.push(1);
  stack.pop();
  stack.display();
}
