import Foundation

struct PerformanceLogger {

    static func measure<T>(
        _ name: String,
        operation: () throws -> T
    ) rethrows -> T {

        let startTime =
            CFAbsoluteTimeGetCurrent()

        defer {

            let duration =
                CFAbsoluteTimeGetCurrent()
                - startTime

            AppLogger.shared.info(
                """
                \(name) completed in \
                \(String(format: "%.3f", duration))s
                """,
                category: .performance
            )
        }

        return try operation()
    }
}
