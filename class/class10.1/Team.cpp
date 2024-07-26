#include "Team.hpp"

Team::Team(const std::string& name) : name(name) {}

void Team::updateStats(int scored, int conceded, int yellow, int red, double maxHeight) {
    goalsScored += scored;
    goalsConceded += conceded;
    yellowCards += yellow;
    redCards += red;
    maxBallHeight += maxHeight;
}

void Team::addPoints(int points) {
    pointsAccumulated += points;
}

int Team::goalDifference() const {
    return goalsScored - goalsConceded;
}

std::string Team::getName() const {
    return name;
}

double Team::getPoints() const {
    return pointsAccumulated;
}

double Team::getMaxBallHeight() const {
    return maxBallHeight;
}

int Team::getGoalsScored() const {
    return goalsScored;
}

int Team::getGoalsConceded() const {
    return goalsConceded;
}

int Team::getYellowCards() const {
    return yellowCards;
}

int Team::getRedCards() const {
    return redCards;
}
