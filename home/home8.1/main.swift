import Foundation

// Create instances of the items
let milk = Milk()
let cookies = Cookies()
let pineapple = Pineapple()

// Create a PricePresenter with a specific priority
let presenter = PricePresenter<Int>(priority: 10)

// Test printTotalPrice with different combinations
presenter.printTotalPrice(obj1: milk, obj2: cookies)
presenter.printTotalPrice(obj1: cookies, obj2: pineapple)
presenter.printTotalPrice(obj1: milk, obj2: pineapple)
