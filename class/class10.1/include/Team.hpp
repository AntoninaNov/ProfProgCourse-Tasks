#pragma once
#include <string>

class Team {
public:
    explicit Team(const std::string& name);

    void updateStats(int scored, int conceded, int yellow, int red, double maxHeight);
    void addPoints(int points);

    int goalDifference() const;
    std::string getName() const;
    double getPoints() const;
    double getMaxBallHeight() const;
    int getGoalsScored() const;
    int getGoalsConceded() const;
    int getYellowCards() const;
    int getRedCards() const;

private:
    std::string name;
    int goalsScored = 0;
    int goalsConceded = 0;
    int yellowCards = 0;
    int redCards = 0;
    double maxBallHeight = 0.0;
    double pointsAccumulated = 0.0;
};
