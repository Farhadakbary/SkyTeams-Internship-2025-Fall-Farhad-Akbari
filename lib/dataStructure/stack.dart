void main() {

  List<int> stack = [];

  stack.add(10);
  stack.add(20);
  stack.add(30);
  print("Stack بعد از Push: $stack");

  int lastItem = stack.removeLast();
  print("عنصر حذف‌شده: $lastItem");
  print("Stack بعد از Pop: $stack");

  int topItem = stack.last;
  print("عنصر بالایی Stack: $topItem");
}
