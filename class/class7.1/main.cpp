#include <iostream>
#include "RectangleManager.hpp"

int main() {
    RectangleManager manager;
    for (int i = 1; i <= 5; ++i) {
        double width = 0.0, height = 0.0;
        std::cout << "Enter rectangle " << i << ":" << std::endl;
        if (std::cin >> width >> height) {
            manager.addRectangle(Rectangle(width, height));
        } else {
            std::cout << "Invalid input!" << std::endl;
            break;
        }
    }

    manager.printRectangleComparison();
    std::cout << "The biggest area: " << manager.getBiggestArea() << std::endl;
    std::cout << "The smallest area: " << manager.getSmallestArea() << std::endl;
    manager.printBiggestSide();
    manager.printTotalArea();

    return 0;
}
