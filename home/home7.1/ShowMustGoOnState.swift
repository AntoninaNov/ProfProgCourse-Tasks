import Foundation

class ShowMustGoOnState: State {
    unowned var player: MusicPlayer

    init(player: MusicPlayer) {
        self.player = player
    }

    func handleCommand(_ command: Command) {
        switch command {
        case .sad:
            player.changeState(to: LetItBeState(player: player))
        case .fun:
            player.changeState(to: StarmanState(player: player))
        default:
            print("Replaying: \(Song.showMustGoOn.rawValue)")
        }
    }

    func enter() {
        print("Now playing: \(Song.showMustGoOn.rawValue)")
    }
}
