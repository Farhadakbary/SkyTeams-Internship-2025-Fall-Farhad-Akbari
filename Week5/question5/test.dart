import 'minStack.dart';
void main() {

  Minstack ms = Minstack();
  ms.push(5);
  ms.push(3);
  ms.push(10);
  ms.push(2);
  ms.push(0);
  print(ms.getMin());

  ms.pop();
  print(ms.getMin());

  ms.pop();
  print(ms.getMin());

  print(ms.top());
}
