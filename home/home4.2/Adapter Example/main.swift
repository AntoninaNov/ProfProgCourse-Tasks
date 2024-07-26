import Foundation

// Modern logging interface
protocol ModernLogger {
    func log(message: String)
}

// Legacy logging system
class LegacyLogger {
    func logMessage(_ message: String) {
        print("Legacy log: \(message)")
    }
}

// Adapter to make LegacyLogger compatible with ModernLogger
class LoggerAdapter: ModernLogger {
    private let legacyLogger: LegacyLogger

    init(legacyLogger: LegacyLogger) {
        self.legacyLogger = legacyLogger
    }

    func log(message: String) {
        legacyLogger.logMessage(message)
    }
}

// Usage
func main() {
    let legacyLogger = LegacyLogger()
    let modernLogger: ModernLogger = LoggerAdapter(legacyLogger: legacyLogger)

    modernLogger.log(message: "This is a test message.")
}

main()
