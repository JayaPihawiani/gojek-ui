void main() {
  final numbers = [1, 2, 3, 4, 5];
  final squaredNumbers = numbers.map((number) => number * number).toList();

  print(squaredNumbers);
}