#include "RectangleManager.hpp"
#include <algorithm>

void RectangleManager::addRectangle(const Rectangle& rectangle) {
    if (rectangles.size() < 5) {
        rectangles.push_back(rectangle);
        updateStatistics();
    }
}

void RectangleManager::updateStatistics() {
    if (rectangles.empty()) return;

    biggestArea = rectangles[0].getArea();
    smallestArea = rectangles[0].getArea();

    for (const auto& rectangle : rectangles) {
        double area = rectangle.getArea();
        if (area > biggestArea) {
            biggestArea = area;
        }
        if (area < smallestArea) {
            smallestArea = area;
        }
    }
}

double RectangleManager::getBiggestArea() const {
    return biggestArea;
}

double RectangleManager::getSmallestArea() const {
    return smallestArea;
}

void RectangleManager::printRectangleComparison() const {
    for (size_t i = 0; i < rectangles.size(); ++i) {
        for (size_t j = i + 1; j < rectangles.size(); ++j) {
            const auto& rect1 = rectangles[i];
            const auto& rect2 = rectangles[j];
            if (rect1.getWidth() <= rect2.getWidth() && rect1.getHeight() <= rect2.getHeight()) {
                std::cout << "Rectangle " << (i + 1) << " can be placed inside Rectangle " << (j + 1) << std::endl;
            }
            if (rect2.getWidth() <= rect1.getWidth() && rect2.getHeight() <= rect1.getHeight()) {
                std::cout << "Rectangle " << (j + 1) << " can be placed inside Rectangle " << (i + 1) << std::endl;
            }
        }
    }
}

void RectangleManager::printBiggestSide() const {
    for (size_t i = 0; i < rectangles.size(); ++i) {
        std::cout << "The biggest side of rectangle " << (i + 1) << ": " << rectangles[i].getBiggerSide() << std::endl;
    }
}

void RectangleManager::printTotalArea() const {
    double totalArea = 0;
    for (const auto& rectangle : rectangles) {
        totalArea += rectangle.getArea();
    }
    std::cout << "Total area of rectangles: " << totalArea << std::endl;
}
