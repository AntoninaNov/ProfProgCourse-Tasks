#pragma once

#include <vector>
#include "Rectangle.hpp"

class RectangleManager {
public:
    void addRectangle(const Rectangle& rectangle);
    double getBiggestArea() const;
    double getSmallestArea() const;
    void printRectangleComparison() const;
    void printBiggestSide() const;
    void printTotalArea() const;

private:
    std::vector<Rectangle> rectangles;
    double biggestArea = 0;
    double smallestArea = std::numeric_limits<double>::max();

    void updateStatistics();
};
