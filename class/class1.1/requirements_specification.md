# Requirements Specification

## User Story A: Find the Largest Negative Number

### Narrative
As a programmer, I need a tool to quickly identify the largest negative number in a list. This tool will speed up my manual calculations and streamline my workflow.

### Acceptance Criteria

**User Interactions:**
- Users should input a sequence of numbers either through a CLI or a GUI.
- Upon entering the sequence, users can trigger a process to find the largest negative number.

**System Responsibilities:**
- The system must validate all inputs to ensure they are either integers or floating-point numbers.
- It should efficiently find and return the largest negative value.
- The output should be clearly displayed, making the largest negative value easy to identify.
- If no negative numbers are present or if the input list is empty, the system should display an appropriate error message and offer guidance on how to correct the input.

## User Story B: Solve Quadratic Equations

### Narrative
As a mathematician, I want a tool that calculates the roots of a quadratic equation, avoiding the manual work involved with calculating the determinant.

### Acceptance Criteria

**User Interactions:**
- Users will enter the coefficients (a, b, and c) of the quadratic equation \(ax^2 + bx + c\) via either a command line or a graphical user interface.
- The solution process is initiated by a user command, either through a button in a GUI or a direct command in a CLI.

**System Responsibilities:**
- Input coefficients must be validated to ensure they are numeric and that coefficient 'a' is not zero (to avoid division by zero errors).
- The system calculates the discriminant \((b^2 - 4ac)\) and determines if the roots are real or complex based on it.
- Roots should be calculated and displayed as follows:
  - Two distinct real roots if the discriminant is positive.
  - A single real root if the discriminant is zero.
  - Two complex roots if the discriminant is negative.
- Results should be presented in a format that clearly differentiates between real and complex roots, with a special notation if there is only one real root.
- The system should handle errors and exceptions gracefully, providing clear feedback to the user on issues such as invalid inputs or calculation errors.
