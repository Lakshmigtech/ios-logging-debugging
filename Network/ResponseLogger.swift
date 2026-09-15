import Foundation

struct ResponseLogger {

    static func log(
        response: HTTPURLResponse,
        data: Data,
        duration: TimeInterval,
        using logger: LoggerProtocol
    ) {

        logger.info(
            """
            Response
            Status Code: \(response.statusCode)
            Response Size: \(data.count) bytes
            Duration: \(String(format: "%.2f", duration)) seconds
            """,
            category: .network
        )
    }
}
