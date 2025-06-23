import 'dart:io';

void main() {

  print("""
╔═════════════════════════════════════════════════════╗
║        📟  Welcome to Basic Calculator  📟          ║
╠═════════════════════════════════════════════════════╣""");

  print(" Choose an option (type the number, then press Enter):");
  print(" 1. Addition\n 2. Subtraction\n 3. Multiplication\n 4. Division\n 5. Remainder ");
  print("-------------------------------------------------------");
  
  stdout.write(" Enter your choice: ");
  int choice = int.parse(stdin.readLineSync()!); 
  
  stdout.write("\n Enter the first number: ");
  int a = int.parse(stdin.readLineSync()!); 

  stdout.write(" Enter the second number: ");
  int b = int.parse(stdin.readLineSync()!);

  print("-------------------------------------------------------");

  switch(choice){

    case 1:
      int result= a+b;
      print("\n The sum of $a and $b is $result");
      break;

    case 2:
      int result= a-b;
      print("\n The difference of $a and $b is $result");
      break;

    case 3:
      int result= a*b;
      print("\n The product of $a and $b is $result");
      break;

    case 4:
      if (b == 0) {
        print("\n Division by zero is not allowed.");
      } else {
      double result = a / b;
        print("\n The quotient of $a and $b is $result");
      }
      break;

    case 5:
       if (b == 0) {
        print("\n Cannot compute remainder when divisor is 0.");
      } else {
        int result = a % b;
        print("\n The remainder of $a and $b is $result");
      }
      break;

    default:
      print("\n Invalid choice. Please select a number between 1 and 5.");

  }

} 
