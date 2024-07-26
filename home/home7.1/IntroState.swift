import Foundation

class IntroState: State {
    unowned var player: MusicPlayer

    init(player: MusicPlayer) {
        self.player = player
    }

    func handleCommand(_ command: Command) {
        switch command {
        case .dangerous:
            player.changeState(to: LetItBeState(player: player))
        case .fun:
            player.changeState(to: StarmanState(player: player))
        case .sad:
            player.changeState(to: InTheEndState(player: player))
        default:
            print("Replaying: \(Song.intro.rawValue)")
        }
    }

    func enter() {
        print("Now playing: \(Song.intro.rawValue)")
    }
}
