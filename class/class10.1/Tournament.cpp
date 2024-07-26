#include "Tournament.hpp"
#include <algorithm>
#include <iostream>
#include <iomanip>
#include <ctime>
#include <cstdlib>

void Tournament::addTeam(const Team& team) {
    teams.push_back(team);
}

void Tournament::recordMatch(Match&& match) {
    matches.push_back(std::move(match));
}

void Tournament::calculateStandings() {
    std::sort(teams.begin(), teams.end(), [](const Team& a, const Team& b) {
        if (a.getPoints() != b.getPoints()) return a.getPoints() > b.getPoints();
        if (a.getMaxBallHeight() != b.getMaxBallHeight()) return a.getMaxBallHeight() > b.getMaxBallHeight();
        if (a.goalDifference() != b.goalDifference()) return a.goalDifference() > b.goalDifference();
        if (a.getGoalsScored() != b.getGoalsScored()) return a.getGoalsScored() > b.getGoalsScored();
        if (a.getRedCards() != b.getRedCards()) return a.getRedCards() < b.getRedCards();
        if (a.getYellowCards() != b.getYellowCards()) return a.getYellowCards() < b.getYellowCards();
        std::srand(static_cast<unsigned>(std::time(nullptr)));
        return std::rand() % 2 == 0;
    });
}

void Tournament::displayStandings() const {
    std::cout << "Final Standings:\n";
    std::cout << std::left << std::setw(20) << "Team Name" << std::setw(10) << "Points" 
              << std::setw(15) << "Goals Scored" << std::setw(15) << "Goals Conceded" 
              << std::setw(15) << "Yellow Cards" << std::setw(15) << "Red Cards" 
              << std::setw(15) << "Max Ball Height" << "\n";

    for (const auto& team : teams) {
        std::cout << std::left << std::setw(20) << team.getName()
                  << std::setw(10) << team.getPoints()
                  << std::setw(15) << team.getGoalsScored()
                  << std::setw(15) << team.getGoalsConceded()
                  << std::setw(15) << team.getYellowCards()
                  << std::setw(15) << team.getRedCards()
                  << std::setw(15) << team.getMaxBallHeight() << "\n";
    }
}
