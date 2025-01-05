function foo(x: int): int {
  if (x < 0) {
    return 0; // Or throw an exception:  throw new Exception("Factorial is not defined for negative numbers");
  } else if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
  echo foo(-5); //This will now handle the negative input gracefully.
}

This improved version explicitly checks for negative input. If a negative number is provided, it returns 0 (or throws an exception for better error handling). This prevents infinite recursion and the resulting stack overflow.