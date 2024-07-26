#ifndef PRICE_PRESENTER_H
#define PRICE_PRESENTER_H

#include <iostream>
#include <concepts>

// Define a concept to ensure the presence of the required methods
template<typename T>
concept Priceable = requires(T obj) {
    { obj.getCoefficient() } -> std::convertible_to<double>;
    { obj.getBasePrice() } -> std::convertible_to<double>;
};

template<size_t PRIORITY>
class PricePresenter {
public:
    template<Priceable T1, Priceable T2>
    void printTotalPrice(const T1& obj1, const T2& obj2) const {
        double totalPrice = PRIORITY * obj1.getCoefficient() * obj1.getBasePrice()
                          + obj2.getCoefficient() * obj2.getBasePrice();
        std::cout << "Total Price: " << totalPrice << std::endl;
    }
};

#endif // PRICE_PRESENTER_H