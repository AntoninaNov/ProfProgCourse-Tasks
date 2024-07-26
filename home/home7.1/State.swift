import Foundation

protocol State {
    var player: MusicPlayer { get }
    func handleCommand(_ command: Command)
    func enter()
}
