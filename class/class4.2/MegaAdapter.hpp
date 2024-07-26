#ifndef PROFPROG_PRACTICE4_2_MEGAADAPTER_HPP
#define PROFPROG_PRACTICE4_2_MEGAADAPTER_HPP
#pragma once

#include "ModernCalculators.hpp"
#include "LegacyCalculator.hpp"
#include <memory>
#include <string>

class MegaAdapter : public BaseMegaCalculator {
public:
    MegaAdapter(std::unique_ptr<LegacyCalculator> lc)
    {
        legacyCalculator = std::move(lc);
    }

    double getPrice() const override
    {
        auto part1 = legacyCalculator->calculatePricePart1();
        auto part2 = legacyCalculator->calculatePricePart2();
        return part1 + part2;
    }

    double getMinimalValue() const override
    {
        return legacyCalculator->getOurTheMostAndMinimalValue();
    }

    std::string getReport() const override
    {
        return legacyCalculator->getSomeDocumentRepresentation();
    }

private:
    std::unique_ptr<LegacyCalculator> legacyCalculator;
};

#endif //PROFPROG_PRACTICE4_2_MEGAADAPTER_HPP
