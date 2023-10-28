Function createCounter() {
  int count = 0; // Variable - outer function

  void increment() {
    count++;
    print(count);
  }

  return increment;
}

void main() {
  final counter = createCounter();

  counter();
  counter();
  counter();
}
