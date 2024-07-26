import Foundation

class MusicPlayer {
    private var currentState: State

    init() {
        self.currentState = IntroState(player: self)
        currentState.enter()
    }

    func changeState(to newState: State) {
        self.currentState = newState
        newState.enter()
    }

    func handleCommand(_ command: Command) {
        currentState.handleCommand(command)
    }
}
