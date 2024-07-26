#pragma once

class Rectangle {
public:
    Rectangle(double width, double height);

    double getWidth() const;
    double getHeight() const;
    double getArea() const;
    double getBiggerSide() const;

private:
    double width;
    double height;
    double area;
};
