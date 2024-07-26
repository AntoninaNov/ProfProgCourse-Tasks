import Foundation

class StarmanState: State {
    unowned var player: MusicPlayer

    init(player: MusicPlayer) {
        self.player = player
    }

    func handleCommand(_ command: Command) {
        switch command {
        case .silly:
            player.changeState(to: IntroState(player: player))
        case .dangerous:
            player.changeState(to: ShowMustGoOnState(player: player))
        case .fun:
            player.changeState(to: InTheEndState(player: player))
        default:
            print("Replaying: \(Song.starman.rawValue)")
        }
    }

    func enter() {
        print("Now playing: \(Song.starman.rawValue)")
    }
}
