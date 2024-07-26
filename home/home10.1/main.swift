import Foundation

let tournament = Tournament()

for i in 1...4 {
    print("Enter the name of team \(i): ", terminator: "")
    if let teamName = readLine(), !teamName.isEmpty {
        tournament.addTeam(Team(name: teamName))
    }
}

let teams = tournament.teams
for i in 0..<teams.count {
    for j in i + 1..<teams.count {
        print("Enter match details for \(teams[i].name) vs \(teams[j].name):")
        print("Score for \(teams[i].name): ", terminator: "")
        guard let score1 = Int(readLine() ?? "0") else { continue }
        print("Score for \(teams[j].name): ", terminator: "")
        guard let score2 = Int(readLine() ?? "0") else { continue }
        print("Yellow cards for \(teams[i].name): ", terminator: "")
        guard let yellow1 = Int(readLine() ?? "0") else { continue }
        print("Yellow cards for \(teams[j].name): ", terminator: "")
        guard let yellow2 = Int(readLine() ?? "0") else { continue }
        print("Red cards for \(teams[i].name): ", terminator: "")
        guard let red1 = Int(readLine() ?? "0") else { continue }
        print("Red cards for \(teams[j].name): ", terminator: "")
        guard let red2 = Int(readLine() ?? "0") else { continue }
        print("Maximum height of ball for \(teams[i].name): ", terminator: "")
        guard let height1 = Double(readLine() ?? "0.0") else { continue }
        print("Maximum height of ball for \(teams[j].name): ", terminator: "")
        guard let height2 = Double(readLine() ?? "0.0") else { continue }

        tournament.recordMatch(Match(team1: teams[i], team2: teams[j], score1: score1, score2: score2, yellow1: yellow1, yellow2: yellow2, red1: red1, red2: red2, height1: height1, height2: height2))
    }
}

tournament.calculateStandings()
tournament.displayStandings()
