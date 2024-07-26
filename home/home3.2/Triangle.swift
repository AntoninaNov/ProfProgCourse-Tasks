import Foundation

// Define custom errors for invalid sides and arguments
enum TriangleError: Error {
    case invalidSides
    case invalidSideArgument
}

// Triangle class with properties and methods to calculate area and height
class Triangle {
    var a: Double
    var b: Double
    var c: Double

    // Initializer with validation checks for side lengths
    init(a: Double, b: Double, c: Double) throws {
        guard a > 0, b > 0, c > 0 else {
            throw TriangleError.invalidSides
        }

        guard (a + b > c) && (a + c > b) && (b + c > a) else {
            throw TriangleError.invalidSides
        }

        self.a = a
        self.b = b
        self.c = c
    }

    // Method to calculate the area of the triangle using Heron's formula
    func calculateArea() -> Double {
        let s = (a + b + c) / 2.0
        return sqrt(s * (s - a) * (s - b) * (s - c))
    }

    // Method to calculate the height of the triangle corresponding to a given side
    func calculateHeight(forSide side: String) throws -> Double {
        let area = calculateArea()

        switch side {
        case "a":
            return (2 * area) / a
        case "b":
            return (2 * area) / b
        case "c":
            return (2 * area) / c
        default:
            throw TriangleError.invalidSideArgument
        }
    }
}

// Main program
do {
    // Example usage of the Triangle class
    let triangle = try Triangle(a: 3.0, b: 4.0, c: 5.0)

    print("Area of the triangle: \(triangle.calculateArea())")

    let heightA = try triangle.calculateHeight(forSide: "a")
    print("Height corresponding to side a: \(heightA)")

    let heightB = try triangle.calculateHeight(forSide: "b")
    print("Height corresponding to side b: \(heightB)")

    let heightC = try triangle.calculateHeight(forSide: "c")
    print("Height corresponding to side c: \(heightC)")

} catch TriangleError.invalidSides {
    print("Error: One or more sides are invalid.")
} catch TriangleError.invalidSideArgument {
    print("Error: Invalid side argument. Choose 'a', 'b', or 'c'.")
} catch {
    print("An unexpected error occurred: \(error)")
}
