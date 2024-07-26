import Foundation

class Tournament {
    private var teams = [Team]()
    private var matches = [Match]()

    func addTeam(_ team: Team) {
        teams.append(team)
    }

    func recordMatch(_ match: Match) {
        matches.append(match)
    }

    func calculateStandings() {
        teams.sort { (a, b) -> Bool in
            if a.isCountry404() {
                return false
            }
            if b.isCountry404() {
                return true
            }
            if a.pointsAccumulated != b.pointsAccumulated {
                return a.pointsAccumulated > b.pointsAccumulated
            }
            if a.maxBallHeight != b.maxBallHeight {
                return a.maxBallHeight > b.maxBallHeight
            }
            if a.goalDifference() != b.goalDifference() {
                return a.goalDifference() > b.goalDifference()
            }
            if a.goalsScored != b.goalsScored {
                return a.goalsScored > b.goalsScored
            }
            if a.redCards != b.redCards {
                return a.redCards < b.redCards
            }
            if a.yellowCards != b.yellowCards {
                return a.yellowCards < b.yellowCards
            }
            return Int.random(in: 0...1) == 0
        }
    }

    func displayStandings() {
        print(String(format: "%-20s %-10s %-15s %-15s %-15s %-15s %-15s", "Team Name", "Points", "Goals Scored", "Goals Conceded", "Yellow Cards", "Red Cards", "Max Ball Height"))
        for team in teams {
            print(String(format: "%-20s %-10.0f %-15d %-15d %-15d %-15d %-15.2f",
                         team.name,
                         team.pointsAccumulated,
                         team.goalsScored,
                         team.goalsConceded,
                         team.yellowCards,
                         team.redCards,
                         team.maxBallHeight))
        }
    }
}
