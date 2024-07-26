#include "PricePresenter.h"
#include "Milk.h"
#include "Cookies.h"
#include "Pineapple.h"

int main() {
    // Create instances of the items
    Milk milk;
    Cookies cookies;
    Pineapple pineapple;

    // Create a PricePresenter with a specific priority
    PricePresenter<10> presenter;

    // Test printTotalPrice with different combinations
    presenter.printTotalPrice(milk, cookies);
    presenter.printTotalPrice(cookies, pineapple);
    presenter.printTotalPrice(milk, pineapple);

    return 0;
}
