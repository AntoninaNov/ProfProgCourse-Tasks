#include "UnitTests.hpp"
#include "Rectangle.hpp"

void testAreaCalculation() {
    Rectangle rect(4.0, 5.0);
    ASSERT_EQ(rect.getArea(), 20.0);
}

void testBiggestArea() {
    Rectangle rect1(4.0, 5.0);
    Rectangle rect2(6.0, 7.0);

    RectangleManager manager;
    manager.addRectangle(rect1);
    manager.addRectangle(rect2);

    ASSERT_EQ(manager.getBiggestArea(), 42.0);
}

void testSmallestArea() {
    Rectangle rect1(4.0, 5.0);
    Rectangle rect2(6.0, 7.0);

    RectangleManager manager;
    manager.addRectangle(rect1);
    manager.addRectangle(rect2);

    ASSERT_EQ(manager.getSmallestArea(), 20.0);
}

void testCanBePlacedInside() {
    Rectangle rect1(4.0, 5.0);
    Rectangle rect2(6.0, 7.0);

    ASSERT_EQ(rect1.canBePlacedInside(rect2), true);
    ASSERT_EQ(rect2.canBePlacedInside(rect1), false);
}

void testBiggestSide() {
    Rectangle rect(4.0, 5.0);
    ASSERT_EQ(rect.getBiggestSide(), 5.0);
}

void testTotalArea() {
    Rectangle rect1(4.0, 5.0);
    Rectangle rect2(6.0, 7.0);

    RectangleManager manager;
    manager.addRectangle(rect1);
    manager.addRectangle(rect2);

    ASSERT_EQ(manager.getTotalArea(), 20.0 + 42.0);
}

int main() {
    UnitTests tests;

    tests.addTest("Test Area Calculation", testAreaCalculation);
    tests.addTest("Test Biggest Area", testBiggestArea);
    tests.addTest("Test Smallest Area", testSmallestArea);
    tests.addTest("Test Can Be Placed Inside", testCanBePlacedInside);
    tests.addTest("Test Biggest Side", testBiggestSide);
    tests.addTest("Test Total Area", testTotalArea);

    tests.run();
    return 0;
}
