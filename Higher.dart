void main() {
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Mapping: to square nums
  final squaredNumbers = mapOperation(numbers, (number) => number * number);
  print("Squared numbers: $squaredNumbers");

  // Filtering: to keep even nums
  final evenNumbers = filterOperation(numbers, (number) => number % 2 == 0);
  print("Even numbers: $evenNumbers");

  // Reducing: to calculate the sum
  final sum = reduceOperation(
      numbers, (int accumulator, int number) => accumulator + number);
  print("Sum of all numbers: $sum");
}

List<int> mapOperation(List<int> list, int Function(int) mapper) {
  final result = <int>[];
  for (final item in list) {
    result.add(mapper(item));
  }
  return result;
}

List<int> filterOperation(List<int> list, bool Function(int) predicate) {
  final result = <int>[];
  for (final item in list) {
    if (predicate(item)) {
      result.add(item);
    }
  }
  return result;
}

T reduceOperation<T>(List<int> list, T Function(T, int) reducer) {
  if (list.isEmpty) {
    print("The input list must not be empty.");
  }

  T result = list[0] as T; // Initialize with the first element of the list
  for (int i = 1; i < list.length; i++) {
    result = reducer(result, list[i]);
  }
  return result;
}
