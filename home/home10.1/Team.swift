import Foundation

class Team {
    let name: String
    private(set) var goalsScored = 0
    private(set) var goalsConceded = 0
    private(set) var yellowCards = 0
    private(set) var redCards = 0
    private(set) var maxBallHeight: Double = 0.0
    private(set) var pointsAccumulated = 0.0

    init(name: String) {
        self.name = name
    }

    func updateStats(scored: Int, conceded: Int, yellow: Int, red: Int, maxHeight: Double) {
        goalsScored += scored
        goalsConceded += conceded
        yellowCards += yellow
        redCards += red
        maxBallHeight += maxHeight
    }

    func addPoints(_ points: Int) {
        pointsAccumulated += Double(points)
    }

    func goalDifference() -> Int {
        return goalsScored - goalsConceded
    }

    func isCountry404() -> Bool {
        return name.lowercased() == "russia"
    }
}
