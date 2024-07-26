import Foundation

// Protocol defining the interface for calculators
protocol BaseMegaCalculator {
    func getPrice() -> Double
    func getMinimalValue() -> Double
    func getReport() -> String
}

// Calculator that provides constant values
class ConstantCalculator: BaseMegaCalculator {
    func getPrice() -> Double {
        return 0.0
    }

    func getMinimalValue() -> Double {
        return 0.0
    }

    func getReport() -> String {
        return "Sound of Silence"
    }
}

// Custom calculator with coefficients
class MyCoolCalculator: BaseMegaCalculator {
    private let coef1: Double
    private let coef2: Double
    private let coef3: Double

    init(coef1: Double, coef2: Double, coef3: Double) {
        self.coef1 = coef1
        self.coef2 = coef2
        self.coef3 = coef3
    }

    func getPrice() -> Double {
        return coef1 * 12.0 + coef2 * 3.0 - coef3 * 0.05
    }

    func getMinimalValue() -> Double {
        return min(coef1 * 12.0, coef2 * 3.0)
    }

    func getReport() -> String {
        return "Some1 \(coef1), another2 \(String(format: "%.3f", coef2)), and3 \(String(format: "%.2f", coef3 * 3.0))"
    }
}
