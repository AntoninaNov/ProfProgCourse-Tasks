import XCTest
@testable import InverseCalculator

class InverseCalculatorTests: XCTestCase {

    func testInverseOfProduct() {
        let result = calculateInverse(x: 2.0, y: 3.0, z: 4.0)
        XCTAssertEqual(result, 1.0 / 24.0, accuracy: 1e-9)
    }

    func testInverseOfSum() {
        let result = calculateInverse(x: 0.0, y: 3.0, z: -3.0)
        XCTAssertEqual(result, 1.0 / 0.0, accuracy: 1e-9)
    }

    func testFallbackExpression() {
        let result = calculateInverse(x: 0.0, y: -1.0, z: 1.0)
        XCTAssertEqual(result, 0.0 + 0.0 * 0.0, accuracy: 1e-9)
    }

    func testAllZeros() {
        let result = calculateInverse(x: 0.0, y: 0.0, z: 0.0)
        XCTAssertEqual(result, 0.0 + (0.0 + 1.0) * (0.0 - 1.0), accuracy: 1e-9)
    }
}
