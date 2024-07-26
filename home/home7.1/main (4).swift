import Foundation

func main() {
    let player = MusicPlayer()

    print("Enter a command (sad, fun, silly, dangerous):")

    while let input = readLine(), let command = Command(rawValue: input.lowercased()) {
        player.handleCommand(command)
        print("Enter a command (sad, fun, silly, dangerous):")
    }
}

main()
