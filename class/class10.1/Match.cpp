#include "Match.hpp"

Match::Match(Team& team1, Team& team2, int score1, int score2, 
             int yellow1, int yellow2, int red1, int red2, 
             double height1, double height2)
    : team1(team1), team2(team2), 
      score1(score1), score2(score2), 
      yellow1(yellow1), yellow2(yellow2), 
      red1(red1), red2(red2), 
      height1(height1), height2(height2) {
    updateTeams();
}

void Match::updateTeams() {
    team1.updateStats(score1, score2, yellow1, red1, height1);
    team2.updateStats(score2, score1, yellow2, red2, height2);

    if (score1 > score2) {
        team1.addPoints(3);
        team2.addPoints(0);
    } else if (score1 < score2) {
        team1.addPoints(0);
        team2.addPoints(3);
    } else {
        team1.addPoints(1);
        team2.addPoints(1);
    }
}
