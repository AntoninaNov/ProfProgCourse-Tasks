import Foundation

// Adapter class to adapt LegacyCalculator to BaseMegaCalculator
class MegaAdapter: BaseMegaCalculator {
    private let legacyCalculator: LegacyCalculator

    init(legacyCalculator: LegacyCalculator) {
        self.legacyCalculator = legacyCalculator
    }

    func getPrice() -> Double {
        return legacyCalculator.calculatePricePart1() + legacyCalculator.calculatePricePart2()
    }

    func getMinimalValue() -> Double {
        return legacyCalculator.getOurTheMostAndMinimalValue()
    }

    func getReport() -> String {
        return legacyCalculator.getSomeDocumentRepresentation()
    }
}
