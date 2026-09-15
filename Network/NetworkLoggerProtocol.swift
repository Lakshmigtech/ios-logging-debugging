import Foundation

protocol NetworkLoggerProtocol {

    func logRequest(
        _ request: URLRequest
    )

    func logResponse(
        _ response: HTTPURLResponse,
        data: Data,
        duration: TimeInterval
    )

    func logError(
        _ error: Error,
        request: URLRequest
    )
}
