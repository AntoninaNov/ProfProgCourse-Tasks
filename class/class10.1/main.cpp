#include "Tournament.hpp"
#include "Match.hpp"
#include "Team.hpp"
#include <iostream>
#include <iomanip>
#include <vector>

int main() {
    Tournament tournament;

    for (int i = 0; i < 4; ++i) {
        std::string teamName;
        std::cout << "Enter the name of team " << i + 1 << ": ";
        std::cin >> teamName;
        tournament.addTeam(Team(teamName));
    }

    size_t teamCount = tournament.getTeams().size();
    for (size_t i = 0; i < teamCount; ++i) {
        for (size_t j = i + 1; j < teamCount; ++j) {
            int score1, score2, yellow1, yellow2, red1, red2;
            double maxHeight1, maxHeight2;

            std::cout << "Enter match details for " << tournament.getTeams()[i].getName() 
                      << " vs " << tournament.getTeams()[j].getName() << ":\n";
            std::cout << "Score for " << tournament.getTeams()[i].getName() << ": ";
            std::cin >> score1;
            std::cout << "Score for " << tournament.getTeams()[j].getName() << ": ";
            std::cin >> score2;
            std::cout << "Yellow cards for " << tournament.getTeams()[i].getName() << ": ";
            std::cin >> yellow1;
            std::cout << "Yellow cards for " << tournament.getTeams()[j].getName() << ": ";
            std::cin >> yellow2;
            std::cout << "Red cards for " << tournament.getTeams()[i].getName() << ": ";
            std::cin >> red1;
            std::cout << "Red cards for " << tournament.getTeams()[j].getName() << ": ";
            std::cin >> red2;
            std::cout << "Maximum height of ball for " << tournament.getTeams()[i].getName() << ": ";
            std::cin >> maxHeight1;
            std::cout << "Maximum height of ball for " << tournament.getTeams()[j].getName() << ": ";
            std::cin >> maxHeight2;

            tournament.recordMatch(Match(
                tournament.getTeams()[i], tournament.getTeams()[j],
                score1, score2,
                yellow1, yellow2,
                red1, red2,
                maxHeight1, maxHeight2
            ));
        }
    }

    tournament.calculateStandings();
    tournament.displayStandings();

    return 0;
}
