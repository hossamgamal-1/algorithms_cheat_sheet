// stack using list
class Stack<T> {
  List<T> _stack = [];
  int _top = -1;

  void push(T element) {
    _stack.add(element);
    _top++;
  }

  bool isEmpty() => _top <= -1;

  void pop() {
    if (!isEmpty()) {
      _stack.removeLast();
      _top--;
    }
  }

  T? getTop() => _top > -1 ? _stack[_top] : null;

  void display() => print(_stack.reversed.toList());
}
