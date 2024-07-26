import Foundation

// Define a protocol to ensure the presence of the required methods
protocol Priceable {
    var coefficient: Double { get }
    var basePrice: Double { get }
}

class PricePresenter<PRIORITY: BinaryInteger> {
    private let priority: PRIORITY

    init(priority: PRIORITY) {
        self.priority = priority
    }

    func printTotalPrice<T1: Priceable, T2: Priceable>(obj1: T1, obj2: T2) {
        let totalPrice = Double(priority) * obj1.coefficient * obj1.basePrice
                        + obj2.coefficient * obj2.basePrice
        print("Total Price: \(totalPrice)")
    }
}
