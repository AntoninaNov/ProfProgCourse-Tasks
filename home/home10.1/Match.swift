import Foundation

class Match {
    private let team1: Team
    private let team2: Team

    init(team1: Team, team2: Team, score1: Int, score2: Int, yellow1: Int, yellow2: Int, red1: Int, red2: Int, height1: Double, height2: Double) {
        self.team1 = team1
        self.team2 = team2
        updateTeams(score1: score1, score2: score2, yellow1: yellow1, yellow2: yellow2, red1: red1, red2: red2, height1: height1, height2: height2)
    }

    private func updateTeams(score1: Int, score2: Int, yellow1: Int, yellow2: Int, red1: Int, red2: Int, height1: Double, height2: Double) {
        team1.updateStats(scored: score1, conceded: score2, yellow: yellow1, red: red1, maxHeight: height1)
        team2.updateStats(scored: score2, conceded: score1, yellow: yellow2, red: red2, maxHeight: height2)

        if score1 > score2 {
            team1.addPoints(3)
        } else if score1 < score2 {
            team2.addPoints(3)
        } else {
            team1.addPoints(1)
            team2.addPoints(1)
        }
    }
}
