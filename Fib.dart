import 'dart:io';

int fibonacci(int n) {
  if (n == 1) {
    return 0;
  } else if (n == 2) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

void main() {
  print("enter the number:");

  int n = int.parse(stdin.readLineSync()!);
  ;

  int result = fibonacci(n);
  print("The $n-th Fibonacci number is: $result");
}
