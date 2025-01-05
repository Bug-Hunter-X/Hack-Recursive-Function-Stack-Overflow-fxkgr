function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will result in a stack overflow error for large values of x, because it uses recursion without a base case for termination.  The recursive calls to foo() consume more and more memory until the stack is exhausted.

The problem is that although the base case (x == 0) is present, the recursive call to foo(x-1) doesn't explicitly check for negative values.  When x becomes negative, the recursion never stops. In Hack, this might not lead to a noticeable error immediately but can cause unexpected behavior or crashes depending on the compiler/interpreter used.