void main() {
  printSum(3, 5);
  printNumbers();
  switchStatement('hello');
  printNumbersReverse();
  checkEvenOdd(15);
  List<int> numbers = [12, 45, 78, 34, 56, 23];
  print('Largest number in the list: ${findLargest(numbers)}');
  tryCatchExample();
}

void printSum(int num1, int num2) {
  print('Sum of $num1 and $num2 is: ${num1 + num2}');
}

void printNumbers() {
  print('Numbers from 1 to 10:');
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void switchStatement(String value) {
  switch (value) {
    case 'hello':
      print('Hi there!');
      break;
    case 'bye':
      print('Goodbye!');
      break;
    default:
      print('Unknown value');
  }
}

void printNumbersReverse() {
  print('Numbers from 20 to 10:');
  int i = 20;
  while (i >= 10) {
    print(i);
    i--;
  }
}

void checkEvenOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }
}

int findLargest(List<int> numbers) {
  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  return largest;
}

void tryCatchExample() {
  try {
    // Some code that may throw an exception
    int result = 10 ~/ 0; // This will cause an exception (division by zero)
    print('Result: $result'); // This line won't execute due to the exception
  } catch (e) {
    print('Error occurred: $e'); // Outputting the error message
  }
}
