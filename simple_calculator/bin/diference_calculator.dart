import 'dart:io';

void main() {
  print("== Simple Calculator ==\n");

  double? num1 = _getNumber("Enter first number: ");
  double? num2 = _getNumber("Enter second number: ");

  print("\nChoose an operation:");
  print("1. Addition (+)");
  print("2. Subtraction (-)");
  print("3. Multiplication (*)");
  print("4. Division (/)");

  int? choice = _getChoice("Enter your choice (1-4): ");

  double? result;

  switch (choice) {
    case 1:
      result = num1! + num2!;
      break;
    case 2:
      result = num1! - num2!;
      break;
    case 3:
      result = num1! * num2!;
      break;
    case 4:
      if (num2 == 0) {
        print("\nError: Division by zero is not allowed.");
        return;
      }
      result = num1! / num2!;
      break;
    default:
      print("\nInvalid choice! Please select a valid operation.");
      return;
  }

  print("\nResult = $result");
  print("\n== Program finished ==");
}

double? _getNumber(String prompt) {
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    if (input != null) {
      try {
        return double.parse(input);
      } catch (e) {
        print("Invalid number, try again.");
      }
    }
  }
}

int? _getChoice(String prompt) {
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    if (input != null) {
      try {
        int choice = int.parse(input);
        if (choice >= 1 && choice <= 4) return choice;
      } catch (e) {}
    }
    print("Invalid choice, try again.");
  }
}