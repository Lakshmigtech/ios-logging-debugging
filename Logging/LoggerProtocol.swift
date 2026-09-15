import Foundation

protocol LoggerProtocol {

    func debug(
        _ message: String,
        category: LogCategory
    )

    func info(
        _ message: String,
        category: LogCategory
    )

    func notice(
        _ message: String,
        category: LogCategory
    )

    func warning(
        _ message: String,
        category: LogCategory
    )

    func error(
        _ message: String,
        category: LogCategory
    )

    func fault(
        _ message: String,
        category: LogCategory
    )
}
