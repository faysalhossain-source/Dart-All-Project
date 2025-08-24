
import 'dart:io';

void main() {
print("==Simple Calculator==\n");

///First user input
stdout.write("Enter first number:");
double num1=double.parse(stdin.readLineSync()!);


///second user input
stdout.write("Enter second number:");
double num2=double.parse(stdin.readLineSync()!);

///operation input
print("\nChoose an operation:");
print("1. Addition(+)");
print("2. Subtraction(-)");
print("3.Mutiplication(*)");
print("4.division(/)");
stdout.write("Enter your choice (1-4): ");
int choice = int.parse(stdin.readLineSync()!);

///doing the operatio here
double result;

switch(choice){
  case 1:
    result = add(num1,num2);
    print("\nResult = $result");
    break;

    case 2:
    result = Subtract(num1,num2);
    print("\nResult=$result");
    break;

    case 3:
    result = Mulplication(num1,num2);
    print("\nResult=$result");
    break;

    case 4:
    if(num2 != 0){
      result = divide(num1, num2);
      print("\nResult = $result");
      }else{
        print("\nError: Diviton by zero is not allowed.");
      }
   
    break;
    
    default:
    print("\nInvalid choice! please select a valid operation.");
}

print("\n==Program finished==");


}

///function for addition
double add(double a,double b) => a+b;

///function for subtraction
double Subtract(double a,double b) => a-b;

///function for multiplication
double Mulplication(double a,double b) => a*b;

///function for division
double divide(double a, double b) => a / b;