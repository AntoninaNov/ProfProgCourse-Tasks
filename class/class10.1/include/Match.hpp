#pragma once
#include "Team.hpp"

class Match {
public:
    Match(Team& team1, Team& team2, int score1, int score2, 
          int yellow1, int yellow2, int red1, int red2, 
          double height1, double height2);

    void updateTeams();

private:
    Team& team1;
    Team& team2;
    int score1;
    int score2;
    int yellow1;
    int yellow2;
    int red1;
    int red2;
    double height1;
    double height2;
};
