import Foundation
import OSLog

final class OSLogLogger: LoggerProtocol {

    private let subsystem: String

    init(
        subsystem: String = "iOS.Logging.Showcase"
    ) {
        self.subsystem = subsystem
    }

    private func logger(
        for category: LogCategory
    ) -> Logger {

        Logger(
            subsystem: subsystem,
            category: category.rawValue
        )
    }

    func debug(
        _ message: String,
        category: LogCategory
    ) {

        logger(for: category)
            .debug("\(message)")
    }

    func info(
        _ message: String,
        category: LogCategory
    ) {

        logger(for: category)
            .info("\(message)")
    }

    func notice(
        _ message: String,
        category: LogCategory
    ) {

        logger(for: category)
            .notice("\(message)")
    }

    func warning(
        _ message: String,
        category: LogCategory
    ) {

        logger(for: category)
            .warning("\(message)")
    }

    func error(
        _ message: String,
        category: LogCategory
    ) {

        logger(for: category)
            .error("\(message)")
    }

    func fault(
        _ message: String,
        category: LogCategory
    ) {

        logger(for: category)
            .fault("\(message)")
    }
}
