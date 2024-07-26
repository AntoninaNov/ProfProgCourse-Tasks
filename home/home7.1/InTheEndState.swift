import Foundation

class InTheEndState: State {
    unowned var player: MusicPlayer

    init(player: MusicPlayer) {
        self.player = player
    }

    func handleCommand(_ command: Command) {
        print("Now playing: \(Song.inTheEnd.rawValue)")
        exit(0)
    }

    func enter() {
        print("Now playing: \(Song.inTheEnd.rawValue)")
    }
}
