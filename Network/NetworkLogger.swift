import Foundation

final class NetworkLogger:
    NetworkLoggerProtocol {

    private let logger: LoggerProtocol

    init(
        logger: LoggerProtocol = OSLogLogger()
    ) {

        self.logger = logger
    }

    func logRequest(
        _ request: URLRequest
    ) {

        let method =
            request.httpMethod ?? "UNKNOWN"

        let url =
            request.url?.absoluteString
            ?? "UNKNOWN"

        logger.debug(
            "➡️ \(method) \(url)",
            category: .network
        )
    }

    func logResponse(
        _ response: HTTPURLResponse,
        data: Data,
        duration: TimeInterval
    ) {

        logger.info(
            """
            ⬅️ HTTP \(response.statusCode) \
            | Size: \(data.count) bytes \
            | Duration: \(String(format: "%.2f", duration))s
            """,
            category: .network
        )
    }

    func logError(
        _ error: Error,
        request: URLRequest
    ) {

        let url =
            request.url?.absoluteString
            ?? "UNKNOWN"

        logger.error(
            "❌ \(url) - \(error.localizedDescription)",
            category: .network
        )
    }
}
