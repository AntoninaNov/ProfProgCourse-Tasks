import Foundation

// Function to print the results from a BaseMegaCalculator instance
func printResults(calculator: BaseMegaCalculator) {
    print("Current price: \(calculator.getPrice())")
    print("Current minimal value: \(calculator.getMinimalValue())")
    print("Current report: \(calculator.getReport())")
}

func main() {
    var calculator: BaseMegaCalculator

    // Using MyCoolCalculator
    calculator = MyCoolCalculator(coef1: 6.0, coef2: 12.1, coef3: 3.2)
    printResults(calculator: calculator)

    // Using ConstantCalculator
    calculator = ConstantCalculator()
    printResults(calculator: calculator)

    // Using MegaAdapter with LegacyCalculator
    let legacyCalculator = LegacyCalculator(megaDelta: 1.34, megaMultiplier: 5.4)
    calculator = MegaAdapter(legacyCalculator: legacyCalculator)
    printResults(calculator: calculator)

    // Example of Adapter usage
    let jsonAdapter = JSONDataAdapter(jsonProvider: JSONDataProvider())
    let xmlAdapter = XMLDataAdapter(xmlProvider: XMLDataProvider())

    print(jsonAdapter.getData())
    print(xmlAdapter.getData())
}

main()
