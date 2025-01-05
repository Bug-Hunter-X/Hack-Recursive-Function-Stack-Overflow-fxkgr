# Hack Recursive Function Stack Overflow Bug

This repository demonstrates a common error in recursive functions written in Hack: stack overflow due to improper termination conditions.

The `bug.hack` file contains a recursive factorial function that lacks robust handling of negative input values. This leads to infinite recursion and a stack overflow for negative or excessively large input. The `bugSolution.hack` file provides a corrected version of the function.

## How to reproduce

1. Clone this repository.
2. Compile and run `bug.hack` using a Hack compiler (e.g., hhvm).  Observe the stack overflow error when providing a large input or a negative input.
3. Compile and run `bugSolution.hack` to see the corrected version with proper handling of potential issues.

## Lesson Learned

Always ensure that your recursive functions have well-defined base cases to prevent infinite recursion.  Thorough input validation is key to avoiding unexpected behavior and runtime errors.