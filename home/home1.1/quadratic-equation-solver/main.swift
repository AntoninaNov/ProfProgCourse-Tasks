import Foundation

struct QuadraticEquationSolver {
    func run() {
        print("Enter the coefficients for the quadratic equation ax^2 + bx + c = 0:")
        guard let a = readCoefficient(prompt: "a (must be non-zero)"), a != 0 else {
            print("Coefficient 'a' cannot be zero.")
            return
        }
        guard let b = readCoefficient(prompt: "b"), let c = readCoefficient(prompt: "c") else {
            print("Invalid input. Coefficients must be numbers.")
            return
        }

        print("Calculating the roots of the equation \(a)x² + \(b)x + \(c) = 0...")
        calculateRoots(a: a, b: b, c: c)
    }

    private func readCoefficient(prompt: String) -> Double? {
        print("Enter coefficient \(prompt):")
        guard let line = readLine(), let number = Double(line) else {
            return nil
        }
        return number
    }

    private func calculateRoots(a: Double, b: Double, c: Double) {
        let discriminant = b * b - 4 * a * c
        switch discriminant {
        case let d where d > 0:
            let root1 = (-b + sqrt(d)) / (2 * a)
            let root2 = (-b - sqrt(d)) / (2 * a)
            print("Two distinct real roots: root1 = \(root1), root2 = \(root2)")
        case 0:
            let root = -b / (2 * a)
            print("One real root: root = \(root)")
        case let d where d < 0:
            let realPart = -b / (2 * a)
            let imaginaryPart = sqrt(-d) / (2 * a)
            print("Two complex roots: root1 = \(realPart) + \(imaginaryPart)i, root2 = \(realPart) - \(imaginaryPart)i")
        default:
            print("Unexpected error occurred.")
        }
    }
}

// Create an instance of the solver and run it
let solver = QuadraticEquationSolver()
solver.run()
