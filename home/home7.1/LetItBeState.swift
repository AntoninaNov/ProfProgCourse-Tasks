import Foundation

class LetItBeState: State {
    unowned var player: MusicPlayer

    init(player: MusicPlayer) {
        self.player = player
    }

    func handleCommand(_ command: Command) {
        switch command {
        case .dangerous:
            player.changeState(to: IntroState(player: player))
        case .silly:
            player.changeState(to: ShowMustGoOnState(player: player))
        default:
            print("Replaying: \(Song.letItBe.rawValue)")
        }
    }

    func enter() {
        print("Now playing: \(Song.letItBe.rawValue)")
    }
}
