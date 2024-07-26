#pragma once
#include "Team.hpp"
#include "Match.hpp"
#include <vector>

class Tournament {
public:
    void addTeam(const Team& team);
    void recordMatch(Match&& match);
    void calculateStandings();
    void displayStandings() const;

    const std::vector<Team>& getTeams() const { return teams; }

private:
    std::vector<Team> teams;
    std::vector<Match> matches;
};
