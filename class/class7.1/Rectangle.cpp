#include "Rectangle.hpp"

Rectangle::Rectangle(double width, double height) 
    : width(width), height(height), area(width * height) {}

double Rectangle::getWidth() const {
    return width;
}

double Rectangle::getHeight() const {
    return height;
}

double Rectangle::getArea() const {
    return area;
}

double Rectangle::getBiggerSide() const {
    return (width > height) ? width : height;
}
