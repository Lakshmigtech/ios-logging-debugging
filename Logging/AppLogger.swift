import Foundation

final class AppLogger {

    static let shared = AppLogger()

    private let logger: LoggerProtocol

    private init(
        logger: LoggerProtocol = OSLogLogger()
    ) {

        self.logger = logger
    }

    func debug(
        _ message: String,
        category: LogCategory = .application
    ) {

        logger.debug(
            message,
            category: category
        )
    }

    func info(
        _ message: String,
        category: LogCategory = .application
    ) {

        logger.info(
            message,
            category: category
        )
    }

    func warning(
        _ message: String,
        category: LogCategory = .application
    ) {

        logger.warning(
            message,
            category: category
        )
    }

    func error(
        _ message: String,
        category: LogCategory = .application
    ) {

        logger.error(
            message,
            category: category
        )
    }
}
