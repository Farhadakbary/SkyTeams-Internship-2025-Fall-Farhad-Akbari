import 'stack.dart';

void main() {
  Stack<int> st = Stack(5);
  print(st.isEmpty());
  st.push(10);
  st.push(20);
  st.push(30);
  st.push(40);
  st.push(300);

  print(st.peek());
  print(st.pop());
  print(st.pop());

  print(st);

  print(st.isEmpty());
}
