// Currying function for a binary function
Function curr(Function(int, int) function) {
  return (int arg1) {
    return (int arg2) {
      return function(arg1, arg2);
    };
  };
}

void main() {
  // Example binary function
  int add(int a, int b) {
    return a + b;
  }

  // Currying the binary 'add' function
  final Add = curr(add);

  final addTwo = Add(2);
  final addFive = addTwo(3); // equivalent to calling add(2, 3)

  print(addFive); // Prints 5
}
