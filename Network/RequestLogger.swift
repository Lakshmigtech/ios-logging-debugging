import Foundation

struct RequestLogger {

    static func log(
        request: URLRequest,
        using logger: LoggerProtocol
    ) {

        let method =
            request.httpMethod ?? "UNKNOWN"

        let url =
            request.url?.absoluteString
            ?? "UNKNOWN"

        logger.debug(
            """
            Request
            Method: \(method)
            URL: \(url)
            """,
            category: .network
        )
    }
}
