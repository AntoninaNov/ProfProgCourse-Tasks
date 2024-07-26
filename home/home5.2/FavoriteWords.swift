import Foundation

// Singleton to manage the configuration
class ConfigurationManager {
    static let shared = ConfigurationManager()

    private var config: [String: (String, String)] = [:]

    private init() {
        loadConfig()
    }

    private func loadConfig() {
        // Path to the configuration file
        let configPath = "config.txt"

        // Read the configuration file
        if let content = try? String(contentsOfFile: configPath) {
            let lines = content.split(separator: "\n")

            for line in lines {
                let parts = line.split(separator: " ")
                if parts.count == 3 {
                    let range = parts[0]
                    let preWord = String(parts[1])
                    let postWord = String(parts[2])

                    for letter in range {
                        config[String(letter)] = (preWord, postWord)
                    }
                }
            }
        } else {
            print("Failed to read config file.")
        }
    }

    func getPrePostWords(for letter: Character) -> (String, String)? {
        let lowercasedLetter = letter.lowercased()
        return config[lowercasedLetter]
    }
}

func runThread(for word: String) {
    guard let firstLetter = word.first,
          let (preWord, postWord) = ConfigurationManager.shared.getPrePostWords(for: firstLetter) else {
        print("No configuration found for word: \(word)")
        return
    }

    let thread = Thread {
        Thread.sleep(forTimeInterval: 1)
        print("\(preWord) \(word) \(postWord)")
    }

    thread.start()
}

// Main program
print("Enter your 5 favorite words:")

var favoriteWords: [String] = []

for _ in 0..<5 {
    if let input = readLine() {
        favoriteWords.append(input)
    }
}

for word in favoriteWords {
    runThread(for: word)
}
